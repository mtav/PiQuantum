#include <Eigen/Core>
#include <stdlib.h>
#include <stdio.h>

#include <iostream>

#include "consts.hpp"


int main(void)
{
    // call constructor 
    State_Vectors state(2);

    /// should be able to pass like this 
    // define ALL OPERATYORS LIKE THIS PLEASE OI FIXED IT
    // I think this version is simpler... 
    Operator X(1, {0,1,1,0}, state); 
    Operator Y(1, {0, Cmplx(0,-1), Cmplx(0,1), 0}, state); 

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
    Y | 1;

    // Print the new state vector
    std::cout << "After Y on qubit one (too tired to decide if it's right :P)..."
	      <<std::endl;
    state.print();

/*    std::cout << "Single qubit gates, X, Y, Z, H " <<std::endl;
    std::cout << X <<std::endl;
    std::cout << Y <<std::endl;
    std::cout << Z <<std::endl;
    std::cout << H <<std::endl;

    state.single_qubit_op(H,0); 
    state.print();
    
    state.single_qubit_op(Z,0);
    state.print();
*/
//    make_op();
    //operator_assignment();
    std::cout << X.get_num_qubits() <<std::endl;

    std::cout << typeid(X.matrix).name() <<std::endl;

    std::cout << typeid((Eigen::Matrix2cd() << 
        0, Cmplx(0,-1),
        Cmplx(0,1), 0).finished()).name() <<std::endl;
}


