#ifndef UTILS_H
#define UTILS_H

#include <vector>
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

std::vector<std::string> parseCSVLine(const std::string& line);
std::vector<std::vector<std::string>> readCSV(const std::string& filename);
std::string joinPaths(const std::string& path1, const std::string& path2);

#endif // UTILS_H