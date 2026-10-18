#include <iostream>

extern "C"
{
    int getTotal();
    int getPower();
}

int main()
{
    int total = getTotal();
    int power = getPower();
    std::cout << "Total : " << total << "\n";
    std::cout << "Power : " << power << "\n";
    return 0;
}