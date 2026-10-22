#include <iostream>

extern "C"
{
    int sumArray(int *array, int size);
}

int main()
{
    int t[5] = { 10, 10, 10, 10, 10 };
    std::cout << "Sum : " << sumArray(t, 5);
    return 0;
}