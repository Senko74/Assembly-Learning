#include <iostream>

extern "C"
{
    int addSquares(int n1, int n2);
    int cube(int n);
}

int main()
{
    std::cout << "Total : " << addSquares(2, 4) << "\n";
    std::cout << "Cube : " << cube(2) << "\n";
    return 0;
}