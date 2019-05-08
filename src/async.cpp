//// @file async.cpp
/// @brief testing file for c++11 async for i/o
//

#include <iostream>
#include <future> // std::async, std::future

double pow(double i)
{
    double res = 1;
    for(long int j = 0; j < i; j++)
    {
        res += i;
    }
    return res;
}


int main(void)
{


    std::future<double> pow_future1 = std::async(std::launch::async, pow, 2e9);
    std::future<double> pow_future2 = std::async(std::launch::async, pow, 2e9);

    // other stuff

    double res1 = pow_future1.get();
    double res2 = pow_future2.get();

    // double res2 = pow(2e9);

    std::cout << "result 1 is " << res1 << "result 2 is " << res2 <<  std::endl; 
    //
    return 0;
}
