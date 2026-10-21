#include <iostream>

extern "C"
{
    int maxOf(int n1, int n2);
    int minOf(int n1, int n2);
    bool isEqual(int n1, int n2);
    bool isGreater(int n1, int n2);
    bool isGreaterOrEqual(int n1, int n2);
    bool isLess(int n1, int n2);
    bool isLessOrEqual(int n1, int n2);
}

int main()
{
    std::cout << maxOf(1,2) << "\n";
    std::cout << minOf(69,67) << "\n";
    std::cout << isEqual(69,69) << "\n";
    std::cout << isGreater(69,69) << "\n";
    std::cout << isGreaterOrEqual(69,69) << "\n";
    std::cout << isLess(69,119) << "\n";
    std::cout << isLessOrEqual(69,169) << "\n";
    return 0;
}