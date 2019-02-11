#include <Eigen/Core>
#include <stdlib.h>
#include <stdio.h>

#include <iostream>
#include "consts.hpp"

int main(void)
{
    // call constructor 
    State_Vectors state(2);

    for(int i=0; i<state.get_size(); i++) state.print(i);
    
    std::cout << state.get_size() << std::endl;
    // std::cout << state.get_eigen_size() << std::endl;

}


