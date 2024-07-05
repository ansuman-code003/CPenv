// debug.hpp
#ifndef DEBUG_HPP
#define DEBUG_HPP

#include <iostream>
#include <vector>
#include <set>
#include <map>
#include <string>

void _print(long long t) { std::cerr << t; }
void _print(int t) { std::cerr << t; }
void _print(std::string t) { std::cerr << t; }
void _print(char t) { std::cerr << t; }
void _print(long double t) { std::cerr << t; }
void _print(double t) { std::cerr << t; }
void _print(unsigned long long t) { std::cerr << t; }

template <class T, class V> void _print(std::pair<T, V> p);
template <class T> void _print(std::vector<T> v);
template <class T> void _print(std::set<T> v);
template <class T, class V> void _print(std::map<T, V> v);
template <class T> void _print(std::multiset<T> v);

template <class T, class V> void _print(std::pair<T, V> p) {
    std::cerr << "{"; _print(p.first); std::cerr << ","; _print(p.second); std::cerr << "}";
}
template <class T> void _print(std::vector<T> v) {
    std::cerr << "[ "; for (T i : v) { _print(i); std::cerr << " "; } std::cerr << "]";
}
template <class T> void _print(std::set<T> v) {
    std::cerr << "[ "; for (T i : v) { _print(i); std::cerr << " "; } std::cerr << "]";
}
template <class T> void _print(std::multiset<T> v) {
    std::cerr << "[ "; for (T i : v) { _print(i); std::cerr << " "; } std::cerr << "]";
}
template <class T, class V> void _print(std::map<T, V> v) {
    std::cerr << "[ "; for (auto i : v) { _print(i); std::cerr << " "; } std::cerr << "]";
}

#define debug(x) std::cerr << "[["<<#x<<"]]" << ":  "; _print(x); std::cerr << std::endl;

#endif // DEBUG_HPP

