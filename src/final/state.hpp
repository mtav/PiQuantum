/** 
 * @file state.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019
 * @brief Header for state vector class and operators
 *
 */

#ifndef STATE_HPP
#define STATE_HPP

#include <Eigen/Core>
#include <Eigen/SparseCore>
#include <iostream>
#include <vector>
// for float std::abs()
#include <memory> // unique_ptr
#include <cmath>
// for rand
#include <cstdlib>
// leds
#include "interface.hpp"

const double PI=4.0*atan(1.0);
const std::complex<double> I_unit(0.0, 1.0);

// --------------------- WoNdErFuL oPeRaToRs --------------
// operators have a name, matrix and if they are single or two-qubit gates
class Operator               
{
    public:
        // e.g. single or 2 qubit control gate
        int num_qubits;
        std::string name;
        Eigen::Matrix2cd matrix;

        // ---------------------- methods ------------------------
        int get_num_qubits(){return num_qubits;};
        void print(){std::cout << matrix <<std::endl;};

        // The trivial constructor
        Operator() {}
};

// Gates, all default args are the three paulis X, Y, Z & H
class Rotation_X : public Operator                    
{
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

class Rotation_Y : public Operator    
{   
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

class Rotation_Z : public Operator
{
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

class Hadamard : public Operator
{
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
class State_vector    
{
    private:
        int num_qubits;
        int size;
        Eigen::VectorXcd vect;

        // for applying gates.
        void single_qubit_op(const Eigen::Matrix2cd & op, int qubit);
        void two_qubit_op(const Eigen::Matrix2cd & op, int ctrl, int targ);
        // takes ref to the two complex doubles from the state vect
        Eigen::Vector2cd mat_mul(const Eigen::Matrix2cd & op, 
                const std::complex<double> & i, const std::complex<double> & j);

        // holdes the qubit zero & one amplitudes and their phase info
        // the leds will read this list.
        struct Qubit_states
        {
            double zero_amp;
            double one_amp;
            // @todo think about this.
            // needs to be double (REal) for leds... 
            double phase;
            bool uptodate;
        };

        // see cpp for imp, should ONLY every use qubit_state so the default is public
        // this must be private
        void display_avg(std::vector<Qubit_states> & qubit_state, const Eigen::VectorXcd & vect);

        // container for all qubit leds.
       // std::vector<std::shared_ptr<Led> > qubit_led_ptrs;

        // led rgb positions are pushed into in the contructor for the number of qubits
        // the led type which is pushed back into qubit_leds at constructor call
        // led 0-3 mappings 
       // std::vector<std::vector<Position> > led_positions{ 
       //     {{0,4}, {0,2}, {0,3}}, 
       //     {{0,7}, {0,5}, {0,6}},
        //    {{1,4}, {1,2}, {1,3}},
        //    {{1,7}, {1,5}, {1,6}} };

        //std::vector<std::vector<Position> > led_positions{ 
        //{(Position){0,4}, (Position){0,2}, (Position){0,3}}, 
        //    {(Position){0,7}, (Position){0,5}, (Position){0,6}},
        //    {(Position){1,4}, (Position){1,2}, (Position){1,3}},
        //    {(Position){1,7}, (Position){1,5}, (Position){1,6}} };

        //std::vector<Led> qubit_leds;

        //Led led0(led_positions[0]);
        
       // std::vector<std::unique_ptr<Led> > qubit_leds;
    public:
        
        // for each qubits zero_amp, one_amp and phase info.
        std::vector<Qubit_states> qubit_state; 
        // ------------------ methods --------------------------
        int get_num_qubits(){return num_qubits;};
        int get_size(){return size;}; 
        void print(void){std::cout << vect << std::endl;};

        // -------------- constructors --------------------------
        // default case if no qubits are specified
        State_vector() {}

        // if one int passed take as number of qubits 
        State_vector(int num) : num_qubits(num)
    {
        size = pow(2, num);
        vect = Eigen::VectorXcd::Zero(size);
        // make the first element 1 (Vacuum state)
        vect(0)=1.0;

        // resize the qubit_state vector so we can store the display info
        // for each qubit.
        //
        // the display functions will use this list, the led stuff can then 
        // read it when needed 
        qubit_state.resize(num_qubits);

        for(int i =0; i< 4; i++)
        {
       // std::cout << "\t\t\t led_positions[i][0 - 3] " << led_positions[i][0] 
        //        << led_positions[i][1] << led_positions[i][2] << std::endl;
        }
        
        // set all to vacuum and display flag to update
        for(int i=0; i<num_qubits; i++)
        {
            qubit_state[i].zero_amp = 1.0;
            qubit_state[i].one_amp = 0.0;
            qubit_state[i].phase = 0.0;
            qubit_state[i].uptodate = true;

            // make led ptrs for each qubit R G B
            //qubit_led_ptrs.push_back(std::make_shared<Led>(led_positions[i][0], led_positions[i][1], led_positions[i][2]));
         //   std::cout << "\t\t made led object " << i << std::endl;

          //  qubit_leds.push_back(std::make_unique<Led>(led_positions[i]));
     }
 } // end of awesome constructor

        // pass the leds to construct the statevector

        void max_superpos()
        {
            vect= Eigen::VectorXcd::Constant(size,1,1/std::sqrt(2));
        }

        // use to apply gates
        void apply(const Operator & op, int qubit);
        // two qubit version
        void apply(const Operator & op, int ctrl, int targ);

        // ---------------------------- Display modes, slightly faster 

        /*
        // now write qubit_state to leds
        void update_leds(std::vector<Qubit_states> qubit_vals, std::vector<std::unique_ptr<Led> > led_vects)
        {   
            std::cout << "update leds called" << std::endl;
            
            for( int i = 0; i < (int)led_vects.size(); i++)
            {
                led_vects[i] -> set_rgb(qubit_vals[i].zero_amp,
                        qubit_vals[i].phase, 
                        qubit_vals[i].one_amp);
            }
        }
        */

        // to check display_avg works
        void disp()
        {
            // loops over the state vector for eevery qubit, 
            // uses num_qubits from the state vector
            // qubits states has the uptodate flag
            display_avg(qubit_state, vect);    // see private functions!!!
            // then print out info. people love data.
            for(int i=0; i<num_qubits; i++)
            {
                std::cout << "qubit " << i << " (|0>, |1>) ("
                    << qubit_state[i].zero_amp << ", "
                    << qubit_state[i].one_amp << ") " << "Phase " 
                    << qubit_state[i].phase << std::endl;
            }
            
            //update_leds(qubit_state, qubit_leds);
        }

        // placeholder display_avg updates qubit.state 
        // led function needs to map qubit_state.zero_amp to RED
        // qubit_state.one_amp to BLUE
        // qubit_state.phase to GREEN!!!!

        // generates a random number and cycles between the qubit states.
        // the great waterfall
        std::vector<Qubit_states> disp_cycle(int num_state_to_show = 4)
        {
            double epsilon = 1e-5;

            std::vector<Qubit_states> cycle_states;
            cycle_states.resize(num_state_to_show);

            int i=0;
            while( i < num_state_to_show )
            {
                long unsigned int pos = rand() % size;  
                if(std::abs(vect(pos)) >= epsilon) // show it 
                {
                    i++;
                    // for each qubit calc led vals and add to list
                    for(int j=0; j < num_qubits; j++)
                    {
                        // is this bit masking?
                        cycle_states[j].zero_amp = (pos & (0 << j));
                        cycle_states[j].one_amp = (pos & (1 << j));
                        // quite complicated so I'm avoiding it.
                        // @todo do phase but you'll have to find the correct
                        // index from which ever amplitude is not this one...
                        cycle_states[j].phase = 0;
                    }
                }
            } // find another great state to show!

            // now cycle through the list sending them to the leds.
            // either here or just return the Qubit_states struct.
            return cycle_states;
        }
        
        /*
        //returns rgb led values
        double red(int qubit){ return qubit_led_ptrs[qubit] -> get_rgb()[0];}
        double green(int qubit){ return qubit_led_ptrs[qubit] -> get_rgb()[1];}
        double blue(int qubit){ return qubit_led_ptrs[qubit] -> get_rgb()[2];}
        */

};
#endif

