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

        // each operator should have a btn
        std::shared_ptr<Button> btn_ptr;
        // ---------------------- methods ------------------------
        int get_num_qubits(){return num_qubits;};
        void print(){std::cout << matrix <<std::endl;};

        void set_btn(std::shared_ptr<Button> btn_ptr_in) { btn_ptr = btn_ptr_in;}

        bool selected() 
        {
            if(btn_ptr -> get_state()) 
            {
                std::cout << "Op " << name << " pressed " << std::endl;
                return 1;
            }
            else { return 0;}
        }
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


// -------------------- THE GRAND QUBIT CLASS ------------
// each qubit has a:
// 
// button
// led
//
// position 
// zero amplitude
// one amplitudes
// phase 
class Qubit
{
    private:
        std::unique_ptr<Led> led_ptr;
        std::unique_ptr<Button> btn_ptr;

        int position;
        double zero_amp;
        double one_amp;
        double phase;

        bool uptodate;

    public:
        Qubit(std::vector<Position> led_rgb_loc, Position btn_loc, int pos = -1)
        {   
            for(auto & i : led_rgb_loc){std::cout << i << std::endl;}
            
            led_ptr = std::make_unique<Led>(led_rgb_loc); 
            btn_ptr = std::make_unique<Button>(btn_loc);
            
            zero_amp = 1.0;
            one_amp = 0.0;
            phase = 0.0;

            std::cout << "setting leds" << std::endl;
            set_led();
            uptodate = true;
        }
        
    // method for setting led
    void set_led(void) {led_ptr -> set_rgb(zero_amp, phase, one_amp); uptodate = true;}

    // check if qubit selected
    bool selected(void) { return btn_ptr -> get_state();}

    // either set all 3 
    void set_amps(double zero, double one,  double phases)
    {
        zero_amp = zero;
        one_amp = one;
        phase = phases;
        set_led();
    }

    // or just 1 at a time
    void set_zero(double amp) {zero_amp = amp;}
    void set_one(double amp) {one_amp = amp;}
    void set_phase(double phi) { phase = phi;}

    void set_uptodate(bool true_false) { uptodate = true_false;} 

    double get_zero_amp() { return zero_amp;}
    double get_one_amp() { return one_amp;}
    double get_phase() { return phase;}

    bool check_uptodate() { return uptodate;}
}; // end of Qubit class

///////////////////////////////////////////////////////////////////////////////////////
// -----------------------------------------------------------------------------------
//
typedef std::vector<std::shared_ptr<Qubit> > Qubits_type;

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

        // to stop button bouncing
        int last_selected_qubit = -1;
    public:
        // the GrAnD qUbIt TyPe
        
        //std::vector<std::shared_ptr<Qubit> > qubits;
        Qubits_type qubits;

        // see cpp for imp, should ONLY every use qubit_state so the default is public
        // this must be private
        void display_avg(Qubits_type & qubits, const Eigen::VectorXcd & vect);

        // ------------------ methods --------------------------
        int get_num_qubits(){return num_qubits;};
        int get_size(){return size;}; 
        void print(void){std::cout << vect << std::endl;};

        // -------------- constructors --------------------------
        // default case if no qubits are specified
        State_vector() {}

        // new improved constructor which takes qubit leds & qubit btn position.
        State_vector(int num, std::vector<std::vector<Position> > qubit_leds, 
                std::vector<Position> qubit_btns) : num_qubits(num)
    {
        for( int i = 0; i < num_qubits; i++) 
        {
            qubits.push_back(std::make_shared<Qubit>(qubit_leds[i], qubit_btns[i]));
        }
        size = pow(2, num_qubits);
        
        set_vacuum();
    } // end of awesome constructor


        // get qubit button that is presse
        int get_qubit(int time = 1) 
        {
            int i = 0;
            if(time == 1){
            std::cout << " Pick a qubit button " << std::endl;
            }
            while( i <= time )
            {
                for(int i = 0; i < num_qubits; i++)
                {
                    if(qubits[i] -> selected()) 
                    {
                        if(i != last_selected_qubit)
                        { 
                            last_selected_qubit = i;
                            return i;
                        }
                    }
                }
                if(time != 1) i++; // for finite time add one to counter
            }
            return -1;
        }

        // the reset button 
        void set_vacuum()
        {
            vect = Eigen::VectorXcd::Zero(size);
            vect(0) = 1.0;

            // set all to vacuum and display flag to update
            for(int i=0; i<num_qubits; i++) { qubits[i] -> set_amps(1,0,0); }
        }

        void max_superpos()
        {
            vect= Eigen::VectorXcd::Constant(size,1,1/std::sqrt(2));
        }

        // use to apply gates
        void apply(const Operator & op, int qubit);
        // two qubit version
        void apply(const Operator & op, int ctrl, int targ);

        // ---------------------------- Display modes, slightly faster 

        // to check display_avg works
        void disp()
        {

            // loops over the state vector for eevery qubit, 
            // uses num_qubits from the state vector
            // qubits states has the uptodate flag
            display_avg(qubits, vect);    // see private functions!!!

            // then print out info. people love data.
            for(int i=0; i<num_qubits; i++)
            {
                std::cout << "qubit " << i << " (|0>, |1>) ("
                    << qubits[i] -> get_zero_amp() << ", "
                    << qubits[i] -> get_one_amp() << ") " << "Phase " 
                    << qubits[i] -> get_phase() << std::endl;
            }	    
            last_selected_qubit = -1;
        }


        /*
        // placeholder display_avg updates qubit.state 
        // led function needs to map qubit_state.zero_amp to RED
        // qubit_state.one_amp to BLUE
        // qubit_state.phase to GREEN!!!!

        // generates a random number and cycles between the qubit states.
        // the great waterfall
        std::vector<std::vector<Qubit_states> > disp_cycle(int num_state_to_show = 1)
        {
            double epsilon = 1e-5;

            std::vector<std::vector<Qubit_states> > result;
            std::vector<Qubit_states> cycle_states;
            cycle_states.resize(num_qubits);

            int i=0;
            while( i < num_state_to_show )
            {
                //long unsigned int pos = rand() % size;  

                for( long int pos = 0; pos < size; pos++)
                {
                    if(std::abs(vect(pos)) >= epsilon) // show it 
                    {
                        std::cout << "position " << pos << std::endl;
                        i++;
                        // for each qubit calc led vals and add to list
                        for(int j=0; j < num_qubits; j++)
                        {
                            // is this bit masking?
                            cycle_states[j].zero_amp = 1 - (pos & (1 << j));
                            cycle_states[j].one_amp = (pos & (1 << j));
                            // quite complicated so I'm avoiding it.
                            // @todo do phase but you'll have to find the correct
                            // index from which ever amplitude is not this one...
                            cycle_states[j].phase = 0;
                        }
                        result.push_back(cycle_states);
                    }
                } // find another great state to show!
            }
            // now cycle through the list sending them to the leds.
            // either here or just return the Qubit_states struct.
            return result;
        }
*/
};
#endif

