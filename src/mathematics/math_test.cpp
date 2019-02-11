#include <Eigen/Core>
#include <stdlib.h>
#include <stdio.h>

#include <iostream>

#include "consts.hpp"


int main(void)
{
    // call constructor 
    State_Vectors state(2);

    std::cout << "State vector is" <<std::endl;
    state.print();

    std::cout << "size " << state.get_size() << std::endl;
    // std::cout << state.get_eigen_size() << std::endl;


    // not working...
   //Operators X(1, Y);


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
    X.print();
    std::cout << X.get_num_qubits() <<std::endl;

    std::cout << typeid(X.matrix).name() <<std::endl;

    std::cout << typeid((Eigen::Matrix2cd() << 
        0, CD(0,-1),
        CD(0,1), 0).finished()).name() <<std::endl;
}


