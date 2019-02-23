#include <Eigen/Core>
#include <stdlib.h>
#include <stdio.h>

#include <iostream>

#include "consts.hpp"


int mat_test(void)
{
    // call constructor 

    // Print X
    std::cout << "X is.." << std::endl;
    X.print();

    std::cout << "State vector is" <<std::endl;
    state.print();

    std::cout << "size " << state.get_size() << std::endl;
    // std::cout << state.get_eigen_size() << std::endl;

    // Operation example
    X | 0; // Do X on qubit zero

    // Print the new state vector
    std::cout << "After X on qubit zero..." <<std::endl;
    state.print();

    // Do Y on qubit 1
    X | 1;

    // Print the new state vector
    std::cout << "After Y on qubit one (too tired to decide if it's right :P)..."
	      <<std::endl;
    state.print();


}


