#include <iostream>

extern "C"
{
    int sumTo(int n);
    int factorial(int n);
    int countEvenNumbers(int n);
    int power(int n1, int n2);
}

int main()
{
    std::cout << "Total : " << sumTo(100) << "\n";
    std::cout << "Factorial : " << factorial(3) << "\n";
    std::cout << "count Even : " << countEvenNumbers(100) << "\n";
    std::cout << "2^10 : " << power(2,10) << "\n";
    return 0;
}   