/** 
 * @file state.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019
 * @brief Header for state vector class and operators
 *
 */

#ifndef state_hpp
#define state_hpp

#include <Eigen/Core>
#include <iostream>
#include <vector>

const double PI=4.0*atan(1.0)                                                   ;
const std::complex<double> I_unit(0.0, 1.0)                                     ;

// --------------------- WoNdErFuL oPeRaToRs --------------
// operators have a name, matrix and if they are single or two-qubit gates
class Operator                                                                  {
    public:
        // e.g. single or 2 qubit control gate
        int num_qubits                                                          ;
        std::string name                                                        ;
        Eigen::Matrix2cd matrix                                                 ;

        // ---------------------- methods ------------------------
        int get_num_qubits(){return num_qubits;}                                ;
        void print(){std::cout << matrix <<std::endl;}                          ;

        Operator() {}
                                                                                };

// Gates, all default args are the three paulis X, Y, Z & H
class Rotation_X : public Operator                                              {
    private:
        double angle                                                            ;
    public:
        Rotation_X(int num_qubit_act_on=1, double theta=PI) : angle(theta)
                                                                                {
        matrix << cos(angle/2), sin(angle/2),
               sin(angle/2), cos(angle/2)                                       ;
        num_qubits = num_qubit_act_on                                           ;
        name = "X"                                                              ;
                                                                                }
                                                                                };

class Rotation_Y : public Operator                                              {   
    private:
        double angle                                                            ;
    public:
        Rotation_Y(int num_qubit_act_on=1, double theta=PI) : angle(theta)
                                                                                {
        matrix << cos(angle/2), -I_unit*sin(angle/2),
               I_unit*sin(angle/2), cos(angle/2)                                ;
        num_qubits = num_qubit_act_on                                           ;
        name = "Y"                                                              ;
                                                                                }
                                                                                };

class Rotation_Z : public Operator                                              {
    private:
        double angle                                                            ;
    public:
        Rotation_Z(int num_qubit_act_on=1, double theta=PI) : angle(theta)
                                                                                {
        matrix << 1.0 , 0.0,
               0.0, exp(I_unit*angle)                                           ;
        num_qubits = num_qubit_act_on                                           ;
        name = "Z"                                                              ;
                                                                                }
                                                                                };

class Hadamard : public Operator                                                {
    private:
    public:
        Hadamard(int num_qubit_act_on = 1)
                                                                                {
            matrix << 1.0, 1.0,
                   1.0, -1.0                                                    ;
            matrix = (1/sqrt(2.0)) * matrix                                     ;
            name = "H"                                                          ;
                                                                                }
                                                                                };


// ------------ ThE gRaNd StAtE vEcToR cLaSs ---------------
class State_vector                                                              {
    private:
        int num_qubits                                                          ;
        int size                                                                ;
        Eigen::VectorXcd vect                                                   ;

        void single_qubit_op(const Eigen::Matrix2cd & op, int qubit)            ;

        void two_qubit_op(const Eigen::Matrix2cd & op, int ctrl, int targ)      ;
        Eigen::Vector2cd mat_mul(const Eigen::Matrix2cd & op, const Eigen::VectorXcd & v, int i, int j);


        // holdes the qubit zero & one amplitudes and their phase info
        struct Qubit_states{
            double zero_amp;
            double one_amp;
            // @todo think about this.
           // needs to be double (REal) for leds... 
            std::complex<double> phase;
        };
        // see cpp for imp, should ONLY every use qubit_state so the default is public
        // this must be private
        void display_avg(std::vector<Qubit_states> & qubit_state);
        std::vector<int> qubit_indices(int qubit)                               ;

        // @todo remove this .
        // [000 001 010 011 100 101 110 111] 
        // right most qubit 0
        // 0,1 [000 001]
        // 2,3 [010 011]
        // 4,5 [100 101]
        // 6,7 [110 111]
        struct Qubit_index                                                      {
            std::vector<int> zero                                               ;
            std::vector<int> one                                                ; 
                                                                                };

    public:
        // for each qubits zero_amp, one_amp and phase info.
        std::vector<Qubit_states> qubit_state; 
        std::vector<Qubit_index> qubit_index                                    ;
        // ------------------ methods --------------------------
        int get_num_qubits(){return num_qubits;}                                ;
        int get_size(){return size;}                                            ; 
        void print(void){std::cout << vect << std::endl;}                       ;

        // -------------- constructors --------------------------
        // default case if no qubits are specified
        State_vector() {}

        // if one int passed take as number of qubits 
        State_vector(int num) : num_qubits(num)
                                                                                {
        size = pow(2, num)                                                      ;
        vect = Eigen::VectorXcd::Zero(size)                                     ;
        // make the first element 1 (Vacuum state)
        vect(0)=1.0                                                             ;

        // resize the qubit_state vector so we can store the display info
        // for each qubit.
        //
        // the display functions will use this list, the led stuff can then 
        // read it when needed 
        qubit_state.resize(num_qubits);

        /// @todo this list makes the program take @ 10x as long at start up
        // probably worth it if more than a few gates are performed
        // populate_qubit_indices(qubit_index);
                                                                                }

        // use to apply gates
        void apply(const Operator & op, int qubit)                              ;
        // two qubit version
        void apply(const Operator & op, int ctrl, int targ)                     ;

        // fill qubit_index with elements
        // takes the std vector of qubits where each qubit has a zero & one int
        //
        void populate_qubit_indices(std::vector<Qubit_index> & list)
                                                                                {
            list.resize(num_qubits)                                             ;
            // loop over all qubits.
            for(int i=0; i<num_qubits; i++)
                                                                                {
                // list[i].zero.resize(num_amplitudes);
                // list[i].one.resize(num_amplitudes);
                // the bit pos for qubit i
                int bit = (1 << i)                                              ;
                int high_incr = (bit << 1)                                      ;
                // calc the positions of the pairs of zeros and ones
                // like the mat mul and disp averaging 
                for(int j=0; j<bit; j++)
                                                                                {
                    for(int k=0; k<size; k+=high_incr)
                                                                                {
                        list[i].zero.push_back(j+k)                             ;
                        list[i].one.push_back(j+k+bit)                          ;
                                                                                }
                                                                                }
                                                                                }
                                                                                }
        // loops over the state vector for every qubit,
        // uses num_qubits from the state vector 
        // passed the qubit_state std:vector
        // overloading so can be called from main with no args
        void display_avg() 
        {
            // see constructor
            display_avg(qubit_state);
        }
       
        // placeholder display_avg updates qubit.state 
        // led function needs to map qubit_state.zero_amp to RED
        // qubit_state.one_amp to BLUE
        // qubit_state.phase to GREEN!!!!

        // to check display_avg works
        void disp()
        {
            display_avg();
         
            for(int i=0; i<num_qubits; i++)
            {
                std::cout << "qubit " << i << " (|0>, |1>) (" << qubit_state[i].zero_amp << ", " << qubit_state[i].one_amp << ") " << std::endl;
            }

        }
};


#endif
