#include "utils.h"

std::vector<std::string> parseCSVLine(const std::string& line) {
    std::vector<std::string> values;
    std::string current;
    bool insideQuotes = false;

    for (char ch : line) {
        if (ch == '"') {
            insideQuotes = !insideQuotes;
        } else if (ch == ',' && !insideQuotes) {
            values.push_back(current);
            current.clear();
        } else {
            current += ch;
        }
    }
    values.push_back(current); // last field

    return values;
}

std::vector<std::vector<std::string>> readCSV(const std::string& filename) {
    std::vector<std::vector<std::string>> result;
    std::ifstream file(filename);

    if (!file.is_open()) {
        std::cerr << "cannot open file: " << filename << std::endl;
        return result;
    }

    std::string line; std::size_t i = 0;
    while (std::getline(file, line)) {
        result.push_back(parseCSVLine(line));
    }

    file.close();
    return result;
}

std::string joinPaths(const std::string& path1, const std::string& path2) {
    if (path1.empty()) return path2;
    if (path2.empty()) return path1;
    
    char lastChar = path1[path1.length() - 1];
    char firstChar = path2[0];
    
    if (lastChar == '/' && firstChar == '/') {
        return path1 + path2.substr(1);
    } else if (lastChar != '/' && firstChar != '/') {
        return path1 + "/" + path2;
    } else {
        return path1 + path2;
    }
}