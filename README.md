<h1 align="center">
mllm
</h1>

<h3 align="center">
fast and lightweight <ins>multimodal LLM</ins> inference engine for mobile and edge devices
</h3>

<h4 align="center">
| Arm CPU | X86 CPU | Qualcomm NPU(QNN) |
</h4>

<h4 align="center">

[![Website](https://img.shields.io/badge/website-visit-green)](https://ubiquitouslearning.github.io/mllm_website/)
[![Documentation](https://img.shields.io/badge/view-docs-blue)](https://ubiquitouslearning.github.io/mllm_website/introduction/getstarted/)
[![Android App](https://img.shields.io/badge/android-app-pink)](https://github.com/lx200916/ChatBotApp/)
[![Actions Status](https://github.com/UbiquitousLearning/mllm/workflows/Tests/badge.svg)](https://github.com/UbiquitousLearning/mllm/actions)
</h4>

- Plain C/C++ implementation without dependencies
- Optimized for multimodal LLMs like Qwen2-VL and LLaVA
- Supported: ARM NEON, x86 AVX2, Qualcomm NPU (QNN), etc
- Various quantization schemes
- End-to-end Android app demo
- Advanced support: MoE, Prompt Cache, etc..

mllm is a lightweight, fast, and easy-to-use (multimodal) on-device LLM inference engine for mobile devices (mainly supporting CPU/NPU), initiated by the research groups led by [Mengwei Xu](https://xumengwei.github.io/) (BUPT) and [Xuanzhe Liu](https://www.liuxuanzhe.com/) (PKU).

**This repository is a customized version of [mllm](https://github.com/UbiquitousLearning/mllm) for hardware control(e.g. CPU/RAM DVFS).**

### Contents
- [Android Demo](#android-demo)
- [Support models](#support-models)
- [Quick Start](#quick-start)
    - [Get the Code](#get-the-code)
    - [Check prerequisites](#check-prerequisites)
    - [Run with the CPU of Android](#run-with-the-cpu-of-android)
    - [Run with the CPU on Termux](#run-with-the-cpu-on-termux)
    - [Run for Linux](#run-for-linux)
- [Customization](#customization)
    - [Convert models](#convert-models)
    - [Convert vocabulary](#convert-vocabulary)
    - [Quantize models](#quantize-models)
- [Acknowledgments](#acknowledgments)
- [License](#license)


## Android Demo

<table>
    <tr>
<!--         <td>Chatting</td> -->
        <td>Android Intent Invocation</td>
        <td>Image Understanding</td>
    </tr>
    <tr>
<!--         <td>  <video src="https://github.com/user-attachments/assets/972b3bad-d659-4d76-9141-64ad0ad34d64"> </td> -->
        <td>  <video src="https://github.com/user-attachments/assets/deb99f8d-9727-4519-9ca7-c39deb7c5b47"> </td>
        <td>  <video src="https://github.com/user-attachments/assets/55321a43-8484-4f74-b7b2-d4495f3626d9"> </td>
    </tr>
    <tr>
        <td>Chat CPU</td>
        <td>Chat NPU</td>
    </tr>    
    <tr>
        <td>  <video src="https://github.com/user-attachments/assets/2b0ab0d6-6727-4b85-9ee3-b39d23de5dde"> </td>
        <td>  <video src="https://github.com/user-attachments/assets/395f8e6e-2ab9-40bc-bf26-164ba5695c64"> </td>
    </tr>
</table>

## Support models

### Language models

| Model                                                                       | CPU <br> FP32 | CPU <br> INT4  | Hexagon NPU <br> INT8 |
|-----------------------------------------------------------------------------|------|-----|----------------------------|
| [LLaMA 2 7B](https://github.com/facebookresearch/llama)                   | [✔️](https://huggingface.co/mllmTeam/llama-2-7b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/llama-2-7b-mllm/tree/main)   |  |
| [LLaMA 3 1B](https://github.com/meta-llama/llama3)                   | [✔️](https://huggingface.co/mllmTeam/llama-3.2-1b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/llama-3.2-1b-mllm/tree/main)   |  |
| [LLaMA 3 3B](https://github.com/meta-llama/llama3)                   | [✔️](https://huggingface.co/mllmTeam/llama-3.2-3b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/llama-3.2-3b-mllm/tree/main)   |  |
| [Alpaca 7B](https://github.com/ymcui/Chinese-LLaMA-Alpaca-2)                | [✔️](https://huggingface.co/mllmTeam/chinese-alpaca-7b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/chinese-alpaca-7b-mllm/tree/main)   |  |
| [TinyLLaMA 1.1B](https://github.com/jzhang38/TinyLlama)                     | [✔️](https://huggingface.co/mllmTeam/tinyllama-1.1b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/tinyllama-1.1b-mllm/tree/main)   |  |
| [LLaVA 7B](https://github.com/haotian-liu/LLaVA)                            | [✔️](https://huggingface.co/mllmTeam/llava-1.5-7b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/llava-1.5-7b-mllm/tree/main)   |  |
| [Gemma 2B](https://github.com/google/gemma_pytorch)                         | [✔️](https://huggingface.co/mllmTeam/gemma-2b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/gemma-2b-mllm/tree/main)   |  |
| [Gemma 2 2B](https://github.com/google/gemma_pytorch)                         | [✔️](https://huggingface.co/mllmTeam/gemma-2-2b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/gemma-2-2b-mllm/tree/main)   |  |
| [Qwen 1.5 0.5B](https://github.com/QwenLM/Qwen)                                 | [✔️](https://huggingface.co/mllmTeam/qwen-1.5-0.5b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/qwen-1.5-0.5b-mllm/tree/main)   |  |
| [Qwen 1.5 1.8B](https://github.com/QwenLM/Qwen)                            | [✔️](https://huggingface.co/mllmTeam/qwen-1.5-1.8b-chat-mllm)  | [✔️](https://huggingface.co/mllmTeam/qwen-1.5-1.8b-chat-mllm)   | [✔️](https://huggingface.co/mllmTeam/qwen-1.5-1.8b-chat-mllm) |
| [Qwen 2.5 1.5B](https://github.com/QwenLM/Qwen2.5) | [✔️](https://huggingface.co/mllmTeam/qwen-2.5-1.5b-mllm/tree/main) | [✔️](https://huggingface.co/mllmTeam/qwen-2.5-1.5b-mllm/tree/main) | |
| [Mistral 7B](https://github.com/mistralai/mistral-src)                      | [✔️](https://huggingface.co/mllmTeam/mistral-7b-instruct-v0.2-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/mistral-7b-instruct-v0.2-mllm/tree/main)   |  |
| [Yi 6B](https://huggingface.co/01-ai/Yi-1.5-6B)                             | [✔️](https://huggingface.co/mllmTeam/yi-1.5-6b-chat-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/yi-1.5-6b-chat-mllm/tree/main)   |  |
| [StableLM 2 1.6B](https://github.com/Stability-AI/StableLM)                     | [✔️](https://huggingface.co/mllmTeam/stablelm-2-1.6b-chat-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/stablelm-2-1.6b-chat-mllm/tree/main)   |  |
| [OPT 1.3B](https://github.com/facebookresearch/metaseq/tree/main/projects/OPT)                     | [✔️](https://huggingface.co/mllmTeam/opt-1.3b-mllm/tree/main)  | [✔️](https://huggingface.co/mllmTeam/opt-1.3b-mllm/tree/main)   |  |
| [Phi 3 mini 3.8B](https://huggingface.co/microsoft/Phi-3-mini-4k-instruct)                     |  [✔️](https://huggingface.co/mllmTeam/phi-3-mini-instruct-mllm/tree/main)   | [✔️](https://huggingface.co/mllmTeam/phi-3-mini-instruct-mllm/tree/main)   |  |
| [MiniCPM 2B](https://huggingface.co/openbmb/MiniCPM-2B-dpo-fp32)                     |  [✔️](https://huggingface.co/mllmTeam/minicpm-2b-dpo-mllm/tree/main)   | [✔️](https://huggingface.co/mllmTeam/minicpm-2b-dpo-mllm/tree/main)   |  |
| [MiniCPM 3 4B](https://huggingface.co/openbmb/MiniCPM3-4B)                     |  [✔️](https://huggingface.co/mllmTeam/minicpm3-4b-mllm/tree/main)   | [✔️](https://huggingface.co/mllmTeam/minicpm3-4b-mllm/tree/main)   |  |
| [MiniCPM MoE 8x2B](https://huggingface.co/openbmb/MiniCPM-MoE-8x2B)                     |  [✔️](https://huggingface.co/mllmTeam/minicpm-moe-8x2b-mllm/tree/main)   | [✔️](https://huggingface.co/mllmTeam/minicpm-moe-8x2b-mllm/tree/main)   |  |
| [SmolLM 1.7B](https://huggingface.co/HuggingFaceTB/SmolLM-1.7B-Instruct)                     |  [✔️](https://huggingface.co/mllmTeam/smollm-1.7b-instruct-mllm/tree/main)   | [✔️](https://huggingface.co/mllmTeam/smollm-1.7b-instruct-mllm/tree/main)   |  |
| [DCLM 1B](https://huggingface.co/TRI-ML/DCLM-1B) | [✔️](https://huggingface.co/mllmTeam/dclm-1b-mllm/tree/main)| [✔️](https://huggingface.co/mllmTeam/dclm-1b-mllm/tree/main)| |
| [OpenELM 1.1B](https://github.com/apple/corenet/tree/main/projects/openelm) | [✔️](https://huggingface.co/mllmTeam/openelm-1.1b-mllm/tree/main)| [✔️](https://huggingface.co/mllmTeam/openelm-1.1b-mllm/tree/main)| |
[PhoneLM 1.5B](https://github.com/UbiquitousLearning/PhoneLM) | [✔️](https://huggingface.co/mllmTeam/phonelm-1.5b-mllm/tree/main)| [✔️](https://huggingface.co/mllmTeam/phonelm-1.5b-mllm/tree/main)| [✔️](https://huggingface.co/mllmTeam/phonelm-1.5b-mllm/tree/main)|

## Quick Start

### Get the Code

```bash
git clone https://github.com/kjh2159/mllm
cd mllm
```

### Check prerequisites

Building mllm requires following tools:

- gcc(11.4+) / clang (11.0+)
- CMake >= 3.18
- Android NDK Toolchains >= 26


> Note that building OpenMP libs on macOS may fail due to Apple LLVM compiler, so we disable OpenMP on macOS by default, you may experience slower performance on macOS. Build mllm is more recommended on Linux.

### Run with the CPU of Android

*`NOTE:` This project requires to root an android phone. Also, depending on your phones, RAM DVFS may not be supported. Please first check if your phone is available for RAM DVFS*

#### 1. Build

  ```bash
  export ANDROID_NDK=/path/to/your/ndk
  cd scripts
  ./build_android.sh
  ```

#### 2. Download Qwen1.5 0.5B

Download the model from [here](https://huggingface.co/mllmTeam/qwen-1.5-0.5b-mllm/tree/main) and place the model file in the directory of `models`, or using the following instructions

```bash
mkdir ../models && cd ../models
# Download qwen-1.5-0.5b-q4_k.mllm
wget https://huggingface.co/mllmTeam/qwen-1.5-0.5b-mllm/resolve/main/qwen-1.5-0.5b-q4_k.mllm?download=true  -O qwen-1.5-0.5b-q4_k.mllm
```

#### 3. Run remote on Android Phone

```bash
sh scripts-arm/run-setup.sh
sh scripts-arm/run-remote.sh
```

Result are as followed:

```
[Q] Which airport is located in Maine, Sacramento International Airport or Knox County Regional Airport?
[A] K Knox County Regional Airport is located in Knox County, Maine

===========================================
            Inference
-------------------------------------------
  Load time: 0.540094 s
  Prefilling speed: 75.0717 tokens/s
  Decoding speed: 26.0652 tokens/s
===========================================
```


### Run with the CPU on Termux

*`NOTE:` This project requires to root an android phone. Also, depending on your phones, RAM DVFS may not be supported. Please first check if your phone is available for RAM DVFS*

#### 1. Build

```bash
cd scripts
sh build.sh
```

#### 2. Download Qwen1.5 0.5B

Download the model from [here](https://huggingface.co/mllmTeam/qwen-1.5-0.5b-mllm/tree/main) and place the model file in the directory of `models`, or using the following instructions

```bash
mkdir ../models && cd ../models
# Download qwen-1.5-0.5b-q4_k.mllm
wget https://huggingface.co/mllmTeam/qwen-1.5-0.5b-mllm/resolve/main/qwen-1.5-0.5b-q4_k.mllm?download=true  -O qwen-1.5-0.5b-q4_k.mllm
```

#### 3. Run remote on Android Phone

```bash
sh scripts-termux/run-setup.sh
sh scripts-termux/run.sh

# or
chmod +x scripts-termux/run.sh
su -c "taskset f0 scripts-termux/run.sh" # to control cpu core allocation
```


## Customization

### Convert models

You can download models from [here](https://huggingface.co/mllmTeam), or you can convert a pytorch/safetensor model to
mllm model by yourself.

```bash
cd tools/convertor
pip install -r ./requirements.txt

# for one file pytorch model
python converter.py --input_model=model.pth --output_model=model.mllm --type=torch

# for multi-file pytorch model
python converter.py --input_model=pytorch_model.bin.index.json --output_model=model.mllm --type=torch

# for one file safetensor model
python converter.py --input_model=model.bin --output_model=model.mllm --type=safetensor

# for multi-file safetensor model
python converter.py --input_model=model.safetensors.index.json --output_model=model.mllm --type=safetensor
``` 

### Convert vocabulary

You can convert vocabulary to mllm vocabulary as followed.

```bash
cd tools/convertor
python vocab.py --input_file=tokenizer.json --output_file=vocab.mllm --type=Unigram
```

### Quantize models

You can quantize mllm model to int4 model by yourself.
mllm only support two quantize modes: Q4_0 and Q4_K.

```bash
cd bin
./quantize model.mllm model_q4_k.mllm Q4_K
```

## Acknowledgments

mllm reuses many low-level kernel implementation from [ggml](https://github.com/ggerganov/ggml) on ARM CPU.
It also utilizes [stb](https://github.com/nothings/stb) and [wenet](https://github.com/wenet-e2e/wenet) for
pre-processing images and audios.
mllm also has benefitted from following projects: [llama.cpp](https://github.com/ggerganov/llama.cpp)
and [MNN](https://github.com/alibaba/MNN).

## License

### Overall Project License

This project is licensed under the terms of the MIT License. Please see the [LICENSE](LICENSE) file in the root
directory for the full text of the MIT License.

### Apache 2.0 Licensed Components

Certain component([wenet](https://github.com/wenet-e2e/wenet)) of this project is licensed under the Apache License 2.0.
These component is clearly identified in their respective subdirectories along with a copy of the Apache License 2.0.
For the full text of the Apache License 2.0, please refer to the [LICENSE-APACHE](third_party/wenet_audio/LICENSE) file
located in the relevant subdirectories.

## Citation
```
@article{xu2025fast,
  title={Fast On-device LLM Inference with NPUs},
  author={Xu, Daliang and Zhang, Hao and Yang, Liming and Liu, Ruiqi and Huang, Gang and Xu, Mengwei and Liu, Xuanzhe},
  booktitle={International Conference on Architectural Support for Programming Languages and Operating Systems (ASPLOS)},
  year={2025}
}
@misc{yi2023mllm,
  title = {mllm: fast and lightweight multimodal LLM inference engine for mobile and edge devices},
  author = {Rongjie Yi and Xiang Li and Zhenyan Lu and Hao Zhang and Daliang Xu and Liming Yang and Weikai Xie and Chenghua Wang and Xuanzhe Liu and Mengwei Xu},
  year = {2023},
  publisher = {mllm Team},
  url = {https://github.com/UbiquitousLearning/mllm}
}
```


