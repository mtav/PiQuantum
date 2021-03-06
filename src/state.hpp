/** 
 * @file state.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019
 * @brief Header for state vector class and operators
 *
 */

#ifndef STATE_HPP
#define STATE_HPP

#include <Eigen/Core> // matrices
#include <iostream>
#include <vector> 
#include <memory> // unique_ptr
#include <cstdlib>      // @TODO should use the random numbers header 

#include "interface.hpp"  // leds and buttons 

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
        int get_num_qubits(void);
        void print();

        void set_btn(std::shared_ptr<Button> btn_ptr_in); 

        //checks if the operators button is pressed,
        bool selected(void); 

        // The trivial constructor
        Operator() {}
};

// Gates, all default args are the three paulis X, Y, Z & H
class Rotation_X : public Operator                    
{
    private:
        double angle;
    public:
        Rotation_X(std::shared_ptr<Button> btn_ptr_in = nullptr, 
                int num_qubits_act_on=1, double theta=PI);
};

class Rotation_Y : public Operator    
{   
    private:
        double angle;
    public:
        Rotation_Y(std::shared_ptr<Button> btn_ptr_in = nullptr,
                int num_qubits_act_on=1, double theta=PI);
};

class Rotation_Z : public Operator
{
    private:
        double angle;
    public:
        Rotation_Z(std::shared_ptr<Button> btn_ptr_in = nullptr,
                int num_qubits_act_on=1, double theta=PI);
};

class Hadamard : public Operator
{
    private:
    public:
        Hadamard(std::shared_ptr<Button> btn_ptr_in = nullptr, int num_qubits_act_on = 1);
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
    public:
        /// define a struct to hold the qubit properties 
        struct Qubit_state
        {
            double zero_amp;
            double one_amp;
            double phase;
        };

    private:
        std::unique_ptr<Led> led_ptr;
        std::unique_ptr<Button> btn_ptr;

        int position;
        bool uptodate;

        Qubit_state qstate;

    public:
        Qubit(std::vector<Position> led_rgb_loc, Position btn_loc, int pos = -1);

        int flash = 0;
        bool led_on = true;
        // method for setting led
        void set_led(void);

        // used in flashing, set qubit WITHOUT changing state amplitudes.
        void set_led(double R, double G, double B);

        void set_led(const Qubit_state & qubit_vals);

        // check if qubit selected
        bool selected(void); 

        // either set all 3 
        void set_amps(double zero, double one,  double phases);
        // overloaded to take Qubit_state
        void set_amps(const Qubit_state & qubit_vals);

        // or just 1 at a time
        void set_zero(double amp);
        void set_one(double amp);
        void set_phase(double phi);

        void set_uptodate(bool true_false);

        double get_zero_amp();
        double get_one_amp();
        double get_phase(); 

        bool check_uptodate();
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

        // cursor object
        // upon position change stop old qubit flashing and 
        // make new qubit flash
        /*   struct Cursor
             {
             friend class State_vector;
             int position = 0;

             Cursor(void) {}
        // Methods

        void move(int new_pos)
        {
        // turn off previous qubit
        flash_off(position);
        flash_on(new_pos);

        position = new_pos;
        }
        };

        Cursor cursor;
        */
        int cursor_pos = 0;
        // see cpp for imp, should ONLY every use qubit_state so the default is public
        // this must be private
        void display_avg(Qubits_type & qubits, const Eigen::VectorXcd & vect);

        // ------------------ methods --------------------------
        int get_num_qubits(void);
        int get_size(void);
        void print(void);

        // -------------- constructors --------------------------
        // default case if no qubits are specified
        State_vector(void) {}

        // new improved constructor which takes qubit leds & qubit btn position.
        State_vector(int num, std::vector<std::vector<Position> > qubit_leds, 
                std::vector<Position> qubit_btns);

        // get qubit button that is pressed
        int get_qubit(int time = 1);

        // the reset button 
        void set_vacuum();

        void set_superpos();

        // use to apply gates
        void apply(const Operator & op, std::string count = "single");

        // not sure why there are so many apply functions...
        void apply(const Operator & op, int qubit);
        // two qubit version
        void apply(const Operator & op, int ctrl, int targ);

        // ---------------------------- Display modes, slightly faster 
        // calls the display average stuff
        void disp(void);

        int disp_cycle(int n = 0);

        // collapse the state
        void measure(void);

        // function to listen for cursor position update
        // does nothing?
        void update_pos(int i = 0);

        void move_cursor(std::string direction);

        void move_cursor(int new_pos);

        // flash on
        void flash_on(int qubit);

        void flash_off(int qubit);

        // overloading 
        void flash(int qubit_pos);

        // make the qubit flash
        void flash(void);

        void stop_flash(void);
};
#endif

