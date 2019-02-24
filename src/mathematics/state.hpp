/** 
 * @file state.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019
 * @brief Header for state vector class and operators
 */


#ifndef state_hpp
#define state_hpp

#include <Eigen/Core>
#include <iostream>
//#include <vector>

const double PI=4.0*atan(1.0);
const std::complex<double> I_unit(0.0, 1.0);

// --------------------- WoNdErFuL oPeRaToRs --------------
// operators have a name, matrix and if they are single or two-qubit gates
class Operator {
    public:
    // e.g. single or 2 qubit control gate
    int num_qubits;
    std::string name;
    Eigen::Matrix2cd matrix;

    // ---------------------- methods ------------------------
    int get_num_qubits(){return num_qubits;};
    void print(){std::cout << matrix <<std::endl;};

    Operator() {}
};

// Gates, all default args are the three paulis X, Y, Z & H
class Rotation_X : public Operator {
    private:
        double angle;
    public:
        Rotation_X(int num_qubit_act_on=1, double theta=PI) : angle(theta)
        {
            matrix << cos(angle/2), sin(angle/2),
                      sin(angle/2), cos(angle/2);
            num_qubits = num_qubit_act_on;
            name = "X";
        }
};

class Rotation_Y : public Operator {
    private:
        double angle;
    public:
        Rotation_Y(int num_qubit_act_on=1, double theta=PI) : angle(theta)
        {
            matrix << cos(angle/2), -I_unit*sin(angle/2),
                      I_unit*sin(angle/2), cos(angle/2);
            num_qubits = num_qubit_act_on;
            name = "Y";
        }
};

class Rotation_Z : public Operator {
    private:
        double angle;
    public:
        Rotation_Z(int num_qubit_act_on=1, double theta=PI) : angle(theta)
        {
            matrix << 1.0 , 0.0,
                      0.0, exp(I_unit*angle);
            num_qubits = num_qubit_act_on;
            name = "Z";
        }
};

class Hadamard : public Operator {
    private:
    public:
        Hadamard(int num_qubit_act_on = 1)
        {
            matrix << 1.0, 1.0,
                      1.0, -1.0;
            matrix = (1/sqrt(2.0)) * matrix;
            name = "H";
        }
};


// ------------ ThE gRaNd StAtE vEcToR cLaSs ---------------
class State_vector {
    private:
    int num_qubits;
    int size;
    Eigen::VectorXcd vect;

    void single_qubit_op(const Eigen::Matrix2cd & op, int qubit);
    
    void two_qubit_op(const Eigen::Matrix2cd & op, int ctrl, int targ);
    Eigen::Vector2cd mat_mul(const Eigen::Matrix2cd & op, const Eigen::VectorXcd & v, int i, int j);
    
    public:
    // ------------------ methods --------------------------
    int get_num_qubits(){return num_qubits;};
    int get_size(){return size;}; 
    void print(void){std::cout << vect << std::endl;};

    // -------------- constructors --------------------------
    // default case if no qubits are specified
    State_vector() {}

    // if one int passed take as number of qubits 
    State_vector(int num_qubits)
    {
        size = pow(2, num_qubits);
        vect = Eigen::VectorXcd::Zero(size);
        // make the first element 1 (Vacuum state)
        vect(0)=1.0;
    }

    // use to apply gates
    void apply(const Operator & op, int qubit);
    // two qubit version
    void apply(const Operator & op, int ctrl, int targ);

};



#endif
