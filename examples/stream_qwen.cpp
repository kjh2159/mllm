/**
 * @file demo_qwen.cpp
 * @author Chenghua Wang (chenghua.wang.edu@gmail.com)
 * @version 0.1
 * @date 2024-05-01
 *
 * @copyright Copyright (c) 2024
 *
 */
#include "cmdline.h"
#include "models/qwen/configuration_qwen.hpp"
#include "models/qwen/modeling_qwen.hpp"
#include "models/qwen/tokenization_qwen.hpp"
#include "utils/utils.h"
#include "utils/json.hpp"

#include <filesystem>

using namespace mllm;
using namespace std;
using json = nlohmann::json;

int main(int argc, char **argv) {
    std::iostream::sync_with_stdio(false);
    cmdline::parser cmdParser;

    // arg parser
    cmdParser.add<string>("vocab", 'v', "specify mllm tokenizer model path", false, "../vocab/qwen_vocab.mllm");
    cmdParser.add<string>("merge", 'e', "specify mllm merge file path", false, "../vocab/qwen_merges.txt");
    cmdParser.add<string>("model", 'm', "specify mllm model path", false, "../models/qwen-1.5-1.8b-q8_0.mllm");
    cmdParser.add<string>("billion", 'b', "[0.5B | 1.8B | 1.5B |]", false, "1.8B");
    cmdParser.add<int>("limits", 'l', "max KV cache size", false, 1024);
    cmdParser.add<int>("thread", 't', "num of threads", false, 4);
    cmdParser.add<bool>("interface", 'i', "print inference interface", false, true);
    cmdParser.add<int>("start", 's', "starting num of queries", false, -1);
    cmdParser.add<int>("length", 'L', "num of queries", false, -1);
    cmdParser.add<string>("input", 'I', "input dataset path of csv. ex) ./dataset/input.csv", false, ".");
    cmdParser.add<string>("output", 'O', "output directory path. ex) ./output/", false, ".");
    cmdParser.add<bool>("save", 'S', "save query-answer pairs with json", false, true);
    /*
    CPU/RAM clock 조절 코드 있어야 함.
    */
    cmdParser.parse_check(argc, argv);


    // variable initialization: BASIC
    string vocab_path = cmdParser.get<string>("vocab");
    string merge_path = cmdParser.get<string>("merge");
    string model_path = cmdParser.get<string>("model");
    string model_billion = cmdParser.get<string>("billion");
    int tokens_limit = cmdParser.get<int>("limits");
    CPUBackend::cpu_threads = cmdParser.get<int>("thread");
    

    // variable initialization: For Stream
    const bool interface = cmdParser.get<bool>("interface");
    const int qa_start = cmdParser.get<int>("start");
    const int qa_len = cmdParser.get<int>("length");
    const string input_path = cmdParser.get<string>("input");
    const string output_dir = cmdParser.get<string>("output"); //"HotpotQA_mllm_result_Qwen"+model_billion+".json";
    const bool is_query_save = cmdParser.get<bool>("save");
    int qa_now = qa_start;
    int qa_limit = 0;
    const string output_hard = joinPaths(output_dir, "HotpotQA_mllm_Qwen_" + model_billion + "_cpu16ram12" + "_hard.txt");
    const string output_infer = joinPaths(output_dir, "HotpotQA_mllm_Qwen_" + model_billion + "_cpu16ram12" + "_infer.txt");
    const string output_qa = joinPaths(output_dir, "HotpotQA_mllm_Qwen_" + model_billion + "_result.json");


    // Model Configuration
    auto tokenizer = QWenTokenizer(vocab_path, merge_path);
    QWenConfig config(tokens_limit, model_billion, RoPEType::HFHUBROPE);
    auto model = QWenForCausalLM(config);
    model.load(model_path);

    
    // QA Dataset Load
    vector<vector<string>> qa_list = readCSV(input_path); // qa load
    vector<string> ans; // qa load


    /*
    hard 측정 코드 있어야 함.
    */


    // limit=-1 -> infinite query stream
    if (qa_len == -1) { qa_limit = qa_list.size(); }
    else { qa_limit = MIN(qa_list.size(), qa_start + qa_len) - 1; }
    while ( (qa_now - qa_start) < qa_limit ) {
        string question = qa_list[qa_now][1];
        string answer;
        auto input_str = tokenizer.apply_chat_template(question);
        auto input_tensor = tokenizer.tokenize(input_str);
        if (interface){
            std::cout << "[Q] " << question << std::endl;
            std::cout << "[A] " << std::flush;
        }

        // inference
        size_t max_new_tokens = tokens_limit - input_tensor.sequence();
        LlmTextGeneratorOpts opt{
            .max_new_tokens = max_new_tokens,
            .do_sample = false,
            .temperature = 0.0F
        };
        model.generate(input_tensor, opt, [&](unsigned int out_token) -> bool {
            auto out_string = tokenizer.detokenize({out_token});
            auto [not_end, output_string] = tokenizer.postprocess(out_string);
            if (!not_end) { return false; }
            if (interface) {std::cout << output_string << std::flush; }
            output_string.erase(std::remove(output_string.begin(), output_string.end(), '\0'), output_string.end());
            answer += output_string;
            return true;
        });
        std::cout << "\n\n";
        
        
        // store data
        auto profile_res = model.profiling("Inference");
        // auto prefill_speed = profile_res[1];
        // auto prefill_token_size = profile_res[3];
        
        ans.push_back(answer); // accummulate answers
        model.clear_kvcache();
        qa_now++;
    }

    if (!is_query_save) {
        // not save the result
        return 0;
    }
    


    /* STREAM RESULT */
    // store answers
    json qa_array = json::array();
    for (int i=0; i<ans.size(); ++i){
        json pair;
        pair["question"] = qa_list[qa_start+i][1];
        pair["answer"] = ans[i];
        qa_array.push_back(pair);
    }

    std::ofstream output_file(output_qa); // open file stream
    if (!output_file) {
        std::cerr << "Error: Could not open file for writing: " << output_qa << std::endl;
        return 1;
    }

    output_file << qa_array.dump(4); // pretty print with indent=4
    output_file.close(); // close file stream
    std::cout << "Saved " << ans.size() << " QA pairs to " << output_qa << std::endl;

    return 0;
}