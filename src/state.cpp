/**
 * @file state.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019
 * @brief State vector class
 *
 */

#include "state.hpp"

// ------------------------------- Operator class

int Operator::get_num_qubits(void){return num_qubits;}

void Operator::print(void){std::cout << matrix << std::endl;}

void Operator::set_btn(std::shared_ptr<Button> btn_ptr_in) {btn_ptr = btn_ptr_in;}

// Check if the operators button is selected.
bool Operator::selected(void) 
{
    bool result = false;

    while(btn_ptr -> get_state()) { result = true; }

    if(result == true) { std::cout << "Op " << name << " pressed" << std::endl;}
    return result;
}

// -------------------------- Paulis 
//

Rotation_X::Rotation_X(std::shared_ptr<Button> btn_ptr_in, int num_qubits_act_on, double theta)
    : angle(theta)
{
    if(theta == PI)
    {
        matrix << 0, 1, 1, 0;
    }
    else
    {
    /*
    matrix <<  std::complex<double>(0.0,1.0) * cos(angle/2.0), sin(angle/2.0),
         sin(angle/2.0),  std::complex<double>(0.0, 1.0) * cos(angle/2.0);
    */
    // matrix << -cos(angle/2.0), sin(angle/2.0), sin(angle/2.0), -cos(angle/2.0);
    matrix << cos(angle/2.0), I_unit*sin(angle/2.0), I_unit*sin(angle/2.0), cos(angle/2.0);   
    }

    name = "X";
    btn_ptr = btn_ptr_in;
    num_qubits = num_qubits_act_on;
}

// Rotation Y
Rotation_Y::Rotation_Y(std::shared_ptr<Button> btn_ptr_in, int num_qubits_act_on, double theta)
    : angle(theta)
{
    matrix << cos(angle/2.0), -I_unit * sin(angle/2.0),
           I_unit * sin(angle/2.0), cos(angle/2.0);
    name = "Y";
    btn_ptr = btn_ptr_in;
    num_qubits = num_qubits_act_on;
}

// Rotation_Z
Rotation_Z::Rotation_Z(std::shared_ptr<Button> btn_ptr_in, int num_qubits_act_on, double theta)
    : angle(theta)
{
    matrix << exp(-I_unit * angle / 2.0) , 0.0,
           0.0, exp(I_unit * angle / 2.0);
    name = "Z";
    btn_ptr = btn_ptr_in;
    num_qubits = num_qubits_act_on;
}

// Hadamard
Hadamard::Hadamard(std::shared_ptr<Button> btn_ptr_in, int num_qubits_act_on)
{
    matrix << 1.0, 1.0,
           1.0, -1.0;
    matrix = (1.0/sqrt(2.0)) * matrix;
    name = "H";
    btn_ptr = btn_ptr_in;
    num_qubits = num_qubits_act_on;
}

// ------------------------------- Qubit class

// Constructor 
Qubit::Qubit(std::vector<Position> led_rgb_loc, Position btn_loc, int pos)
{
    // print the led loc for debugging can remove when working
    for( auto & i : led_rgb_loc){ std::cout << i << std::endl; }

    led_ptr = std::make_unique<Led>(led_rgb_loc);
    btn_ptr = std::make_unique<Button>(btn_loc);

    qstate.zero_amp = 1.0;
    qstate.one_amp = 0.0;
    qstate.phase = 0.0;

    std::cout << "Setting leds" << std::endl;
    set_led();
    uptodate = true;
}

// set leds.
void Qubit::set_led(void) 
{ 
    led_ptr -> set_rgb(qstate.zero_amp, qstate.phase, qstate.one_amp);
    uptodate = true;
}

void Qubit::set_led(const Qubit_state & qubit_vals)
{
    led_ptr -> set_rgb(qubit_vals.zero_amp, qubit_vals.phase, qubit_vals.one_amp);
}

// used for flashing set leds without changing qubit_state.
void Qubit::set_led(double R, double G, double B)
{
    led_ptr -> set_rgb(R,G,B);
}

// check if button is pressed
bool Qubit::selected(void) 
{
    // 1 -> 0
    //for(int i = 0; i < 100; i++)
    //{}

    bool result = false;
    while(btn_ptr -> get_state())
    {
        result = true;
    }

    return result;
}

void Qubit::set_amps(double zero, double one, double phases)
{
    qstate.zero_amp = zero;
    qstate.one_amp = one;
    qstate.phase = phases;
    set_led();
}

void Qubit::set_amps( const Qubit_state & qubit_vals)
{
    // this might not work, @bug this.
    qstate = qubit_vals;
    set_led();
}

void Qubit::set_zero(double amp) { qstate.zero_amp = amp;}
void Qubit::set_one(double amp) { qstate.one_amp = amp;}
void Qubit::set_phase(double phi) { qstate.phase = phi;}

void Qubit::set_uptodate(bool true_false) { uptodate = true_false;}

double Qubit::get_zero_amp(void) { return qstate.zero_amp;}
double Qubit::get_one_amp(void) { return qstate.one_amp;}
double Qubit::get_phase(void) { return qstate.phase;}

bool Qubit::check_uptodate(void) { return uptodate;}



// -------------------- State Vector class 

int State_vector::get_num_qubits(void){ return num_qubits;}
int State_vector::get_size(void){ return size;}

void State_vector::print(void){ std::cout << vect << std::endl;}

State_vector::State_vector(int num, std::vector<std::vector<Position> > qubit_leds,
        std::vector<Position> qubit_btns) : num_qubits(num)
{
    for(int i = 0; i < num_qubits; i++)
    {
        qubits.push_back(std::make_shared<Qubit>(qubit_leds[i], qubit_btns[i]));
    }
    size = pow(2, num_qubits);
    set_vacuum();

    cursor_pos = 0;
    move_cursor(cursor_pos);
}

// check all qubit btns and return the int of the qubit pressed
int State_vector::get_qubit(int time)
{
    int i = 0;
    if(time == 1) std::cout << "Pick a qubit button " << std::endl;

    while( i <= time )
    {
        for( int j = 0; j < num_qubits; j++)
        {
            if(qubits[j] -> selected())
            {
                if(j != last_selected_qubit)
                {
                    last_selected_qubit = j;
                    return j;
                }
            }
        }
        if(time != 1) i++; // for finite time add one to the counter 
    }
    return -1;
}

// reset everything back to the vacuum state 
void State_vector::set_vacuum(void)
{
    vect = Eigen::VectorXcd::Zero(size);
    vect(0) = 1.0;

    // set all to vacuum and display flag to update leds.
    for(int i = 0; i < num_qubits; i++) { qubits[i] -> set_amps(1.0, 0.0, 0.0);}
}

// @TODO this
void State_vector::set_superpos(void)
{
    // plus state everywhere
    vect = Eigen::VectorXcd::Constant(size, 1, 1/std::sqrt(num_qubits));
    // This might not be the correct values 
    for(int i = 0; i < num_qubits; i++) { qubits[i] -> set_amps(0.5, 0.5, 0); }
}

//---------------------------------- Display stuff 
// to check display_avg works
void State_vector::disp(void)
{

    // loops over the state vector for eevery qubit, 
    // uses num_qubits from the state vector
    // qubits states has the uptodate flag
    State_vector::display_avg(qubits, vect);    // see private functions!!!

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

void State_vector::measure(void)
{
    while(1)
    {
        int r_num = rand() % size;
        if(std::abs(vect(r_num)) >= 1e-5)
        {
            std::cout << " rand pos = " << r_num  << std::endl;
            for(int j = 0; j < num_qubits; j++)
            {
                Qubit::Qubit_state q_state;
                // is this bit masking?
                if( (r_num & (1 << j)) > 0 )
                {
                    q_state.one_amp = 1;
                    q_state.zero_amp = 0;
                }
                else
                {
                    q_state.one_amp = 0;
                    q_state.zero_amp = 1;
                }

                // q_state.one_amp = (r_num & (1 << j));
                // q_state.zero_amp = 1 - q_state.one_amp;
                // quite complicated so I'm avoiding it.
                // @todo do phase but you'll have to find the correct
                // index from which ever amplitude is not this one...
                q_state.phase = 0;

                qubits[j] -> set_amps(q_state);
            }
            // reset state vector to correct state
            vect = Eigen::VectorXcd::Zero(size);
            vect(r_num) = 1.0;
            return;
        }
    }
}


// display cycling 
// 

// outer index is for how many states to cycle through
// inner index is for the n qubits 
std::vector<std::vector<Qubit::Qubit_state> > qubit_disp_cycle;

int State_vector::disp_cycle(int n)
{
    // search the state vector got the n-th state that has an amplitude
    std::vector<Qubit::Qubit_state> single_state;  

    // tolerance on non-zero amplitudes
    double epsilon = 1e-5;

    while(1) // ???
    {
        std::cout << "counter =" << n << std::endl;
        for(int i = n; i < size; i++)
        {
            // std::cout << "vect( " << i << " ) = " << vect(i) << std::endl;
            if(std::abs(vect(i)) >= epsilon) //occupied
            {
                std::cout << "epsilon check true" << std::endl;
                // calc all zero & one vals for every qubit
                for(int j = 0; j < num_qubits; j++)
                {
                    Qubit::Qubit_state q_state;
                    // is this bit masking?
                    q_state.one_amp = (i & (1 << j));
                    q_state.zero_amp = 1 - q_state.one_amp;
                    // quite complicated so I'm avoiding it.
                    // @todo do phase but you'll have to find the correct
                    // index from which ever amplitude is not this one...
                    // q_state.phase = 0;
                    q_state.phase = 0.7 * qubits[j] -> get_phase();

                    single_state.push_back(q_state);
                }

                // state was found and all qubits have been given amps
                for(int k = 0; k < num_qubits; k++){ qubits[k] -> set_led(single_state[k]); }
                // exit loop but save counter for next call
                std::cout <<"Exit early i =" << i << std::endl;
                return ++i;
            }
        }
        std::cout << "Reached the end of the state vector, try again?" << std::endl;
        n = 0;
    }
}

/*
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
// use to apply gates
void State_vector::apply(const Operator & op, std::string count)
{
    if(count == "single"){ apply(op, cursor_pos);}
    else if(count == "controlled")
    {
        int ctrl = cursor_pos;
        int targ = ctrl; // for the loop

        // update the target cursor pos
        while(targ == ctrl){
            update_pos();
            targ = cursor_pos;
        }
        std::cout << "Ctrl " << ctrl << ", Targ " << targ << std::endl;
        apply(op, ctrl, targ);
    }
    // default is single qubit gate
    else { apply(op, cursor_pos); }
}

// use to apply gates
void State_vector::apply(const Operator & op, int qubit)
{
    single_qubit_op(op.matrix, qubit);
    std::cout << " You applied " << op.name << " on qubit " << qubit << std::endl; 
    qubits[qubit] -> set_uptodate(false);
    last_selected_qubit = - 1; // to fix button bouncing in state.hpp
}

// two qubit version
void State_vector::apply(const Operator & op, int ctrl, int targ)
{
    // for button bouncing ask again 
    while(ctrl == targ) {targ = get_qubit();}
    two_qubit_op(op.matrix, ctrl, targ);
    std::cout << "You applied " << op.name
        << " controlled on " << ctrl
        << " target " << targ << std::endl;
    qubits[targ] -> set_uptodate(false);
    last_selected_qubit = - 1; // to fix button bouncing in state.hpp
}

// ------------------- WeIrD iNdEx LoOpInG --------------------

/** apply operator
 * @param state state vector containing amplitudes 
 * @param qubit qubit number to apply 2x2 matrix to
 * @param N total number of qubits in the state
 * @param op 2x2 operator to be applied
 * 
 * This routine applies a single qubit gate to the state vector @param state.
 * Consider the three qubit case, with amplitudes shown in the table below:
 *
 *   \verbatim
 *     index     binary   amplitude 
 *      ----------------------------- 
 *        0       0 0 0       a0
 *        1       0 0 1       a1 
 *        2       0 1 0       a2
 *        3       0 1 1       a3
 *        4       1 0 0       a4
 *        5       1 0 1       a5
 *        6       1 1 0       a6
 *        7       1 1 1       a7
 *      -----------------------------
 *      Qubit:    2 1 0
 * \endverbatim
 * 
 * If a single qubit operation is applied to qubit 2, then the 2x2 matrix 
 * must be applied to all pairs of (0,1) in the first column, with the numbers
 * in the other columns fixed. In other words, the following indices are paired:
 * 
 *       (0+0) (1+0) (2+0) (3+0)
 *       (4+0) (5+0) (6+0) (7+0)
 * 
 * where the top line corresponds to the ZERO amplitude and the bottom row
 * corresponds to the ONE amplitude. 
 * 
 * Similarly, for qubit 1 the pairings are:
 * 
 *       (0+0) (0+4) (1+0) (1+4)
 *       (2+0) (2+4) (3+0) (3+4)
 * 
 * And for qubit 0 the pairings are:
 * 
 *       (0+0) (0+2) (0+4) (0+6)
 *       (1+0) (1+2) (1+4) (1+6)
 * 
 * These numbers are exactly the same as the previous function, which means
 * the same nested loops can be used to perform operation. Now the index
 * 
 *      root + step 
 * 
 * refers to the ZERO amplitude (the first element in the column vector to
 * be multiplied by the 2x2 matrix), and the index
 * Complex state[], int N
 *      root + 2^k + step
 * 
 * corresponds to the ONE entry.
 *
 * -----------------------------------------------------------------------
 * @brief New function to perform single qubit gates
 * @param op the unitary to perform
 * @param k the index of the qubit to modify
 * @param state the state vector
 * 
 * The function computes a single qubit operation acting on @param state.
 * It sets the bit position associated with the qubit to zero, and then 
 * generates all possible indices in the other bit positions. These 
 * correspond to the ZERO states. The ONE states are obtained by changing
 * the kth bit from zero to one.
 * 
 */
void State_vector::single_qubit_op(const Eigen::Matrix2cd & op, int qubit){
    int bit = (1 << qubit); // The bit position corresponding to the kth qubit
    int high_incr = (bit << 1); 
    Eigen::Vector2cd temp;
    // double epsilon = 1e-5;
    /// @note this order is correct and super important!
    // Increment through the indices less than bit
    long unsigned int skipped=0, not_skipped=0; 

    for(int i=0; i<bit; i++)
    {
        // Increment through the indices above bit
        for(int j=0; j<size; j+=high_incr)
        {
            // same speed up these two ifs
            // if ((std::abs(vect(i+j)) + std::abs(vect(i+j+bit))) >= epsilon)
            //  if ((abs(vect(i+j)) >= epsilon) || (abs(vect(i+j+bit)) >= epsilon))
            {
                temp = mat_mul(op, vect(i+j), vect(i+j+bit));
                vect(i+j) = temp(0); 
                vect(i+j+bit) = temp(1);

                not_skipped++;
            }
            // else skipped++;
        }
    }
    std::cout << "Qubit " << qubit << " (not_skipped, skipped) (" << not_skipped << ", " << skipped << ")" << std::endl;
}


/*
 *
 *
 * @brief Efficient controlled qubit operation
 * @param op the operation (ctrl-op is performed)
 * @param ctrl the index of the ctrl qubit
 * @param targ the index of the targ qubit
 * @param state the state vector
 * 
 * This function is implemented similarly to the single qubit case above.
 * Now there are three ranges of indices to increment through, separated by
 * the two qubit indices. 
 * 

 void controlled_qubit_op_new(const Complex op[2][2], int ctrl, int targ, Complex state[]) {
 int small_bit, large_bit;
 if(ctrl > targ) {
 small_bit = (1 << targ);
 large_bit = (1 << ctrl);
 } else {
 small_bit = (1 << ctrl);
 large_bit = (1 << targ);
 }
 int mid_incr = (small_bit << 1);
 int high_incr = (large_bit << 1);
 int targ_bit = (1 << targ);

// Increment through the indices above largest bit (ctrl or targ)
for(int i=0; i<STATE_LENGTH; i+=high_incr) {
// Increment through the middle set of bits
for(int j=0; j<large_bit; j+=mid_incr) {
// Increment through the low set of bits
for(int k=0; j<small_bit; j++) {
// 2x2 matrix multiplication on the zero (i+j+k)
// and one (i+j+k+targ_bit) indices. 
mat_mul(op, state, i+j+k, i+j+k+targ_bit);
}
}
}
}

/// Old controlled qubit operations
void controlled_qubit_op(const Complex op[2][2], int ctrl, int targ, Complex state[]) {
int root_max = pow2(targ); // Declared outside the loop
/// \bug this needs to be a long int for >16 qubits
int increment = 2 * root_max;
/// ROOT loop: starts at 0, increases in steps of 1
for (int root = 0; root < root_max; root++) {
/// STEP loop: starts at 0, increases in steps of 2^(k+1)
for (int step = 0; step < STATE_LENGTH; step += increment) {
/// First index is ZERO, second index is ONE
/// @note for 2 qubit case check if the index in the ctrl qubit 
/// is a 1 then apply the 2x2 unitary else do nothing
///
/// @note sorry.
/// this checks for the first element of the state vector i.e. the target 
/// qubits |0> and checks that the state vector element is one which the 
/// control qubit has a |1> state -> (root + step)
///
/// The second element of the state vector to take is then the first
/// +2^(target qubit number). This also needs to be checked that the control
/// qubit is in the |1>. 
/// @todo This expression can probably be simplified or broken over lines.
/// The condition for the if statement is that root+step and
/// root + step + root_max contain 1 in the ctrl-th bit. 
if( (((root+step) & (1 << ctrl)) && 

((root+step+root_max) & (1 << ctrl))) == 1){
mat_mul(op, state, root + step, root + root_max + step);
}
}
}
}
*/
// same as above but different indices for controlled gates.
void State_vector::two_qubit_op(const Eigen::Matrix2cd & op, int ctrl, int targ)
{
    // temp matrix
    Eigen::Vector2cd temp;
    int root_max = pow(2, targ); // Declared outside the loop
    /// \bug this needs to be a long int for >16 qubits
    int increment = 2 * root_max;
    /// ROOT loop: starts at 0, increases in steps of 1
    for (int root = 0; root < root_max; root++)
    {
        /// STEP loop: starts at 0, increases in steps of 2^(k+1)
        for (int step = 0; step < size; step += increment)
        {
            /// First index is ZERO, second index is ONE
            /// @note for 2 qubit case check if the index in the ctrl qubit 
            /// is a 1 then apply the 2x2 unitary else do nothing
            ///
            /// @note sorry.
            /// this checks for the first element of the state vector i.e. the target 
            /// qubits |0> and checks that the state vector element is one which the 
            /// control qubit has a |1> state -> (root + step)
            ///
            /// The second element of the state vector to take is then the first
            /// +2^(target qubit number). This also needs to be checked that the control
            /// qubit is in the |1>. 
            /// @todo This expression can probably be simplified or broken over lines.
            /// The condition for the if statement is that root+step and
            /// root + step + root_max contain 1 in the ctrl-th bit. 
            if( (((root+step) & (1 << ctrl)) && ((root+step+root_max) & (1 << ctrl))) == 1)
            {
                temp = mat_mul(op, vect(root+step), vect(root+root_max+step));
                vect(root+step) = temp(0);
                vect(root+step+root_max) = temp(1);
            }
        }
    }
}

// returns 2 vector,
// takes 2x2 matrix
// vector 
// and selects the i-th and j-th elements from the vector
Eigen::Vector2cd State_vector::mat_mul(const Eigen::Matrix2cd & op, const std::complex<double> & i,const std::complex<double> & j)
{
    // make temp vector of size 2
    Eigen::Vector2cd temp;
    temp(0) = i;
    temp(1) = j;
    return op*temp;
}

// --------------------- Display stuff, uses the weird index looping above 
//
// the (semi)-global qubit_state list. 
// has zero and one amp vars, and phase.
// use the std vector to write to leds this function just updates the amplitudes in 
// the list
void State_vector::display_avg(Qubits_type & qubits, const Eigen::VectorXcd & vect)
{
    std::complex<double> zero=0.0, one=0.0;
    // uses qubit_state vector.
    // temp vector used to check sign/phase of state                                   
    // vector for each qubit containing zero and one amplitudes
    for(int i = 0; i < num_qubits; i++)
    {
        if(!qubits[i] -> check_uptodate())
        {
            // or 1 << i
            int root_max = pow(2, i);
            // or root_max << 1
            int increment = 2*root_max;
            // reset state amplitudes.
            double zero_amp =0.0;
            double one_amp = 0.0;
            double phase = 0.0;
            int num_non_zero = 0;

            double epsilon = 1e-5;

            for(int root = 0; root < root_max; root++)
            {
                for(int step = 0; step < size; step += increment)
                {
                    // only add if the values are larger than epsilon
                    if ((abs(vect(root+step)) >= epsilon) || (abs(vect(root+step+root_max)) >= epsilon))
                    {
                        // use these for phases or something...
                        zero = vect(root + step);
                        one = vect(root + step +root_max);
                        // for the i-th qubit calc amplitudes |a|^2
                        zero_amp += std::norm(zero); 
                        one_amp += std::norm(one);

                        // @todo do phase stuff
                        // arg() of zero/one = arg(zero) - arg(one)
                        //std::cout << "arg (zero, one) " << arg(zero) << ", " << arg(one) << std::endl;
                        double zero_arg = std::abs(arg(zero)), one_arg = std::abs(arg(one));
                        // @todo phase arg caching!!!!
                        // if same number but not zero write one out
                        // if difference is > epsilon write diff
                        phase += std::abs(zero_arg - one_arg);
                        num_non_zero++;

                    }
                }
            }
            // after looping through all elements in the state vector 
            // return zero and one amplitudes and phase info to leds.
            // e.g set_leds(zero_amp, one_amp, phase);
            qubits[i] -> set_zero(zero_amp);
            qubits[i] -> set_one(one_amp);

            // to normalise
            if(phase >= epsilon) qubits[i] -> set_phase(phase/num_non_zero/PI);
            else qubits[i] -> set_phase(0.0);

            qubits[i] -> set_led();
        }
        // write qubit_state to leds to force fix the cycling stuff
        qubits[i] -> set_led();
    }
}

// update cursor position 
// uses physical buttons 
// function to listen for cursor position update
// does nothing?
void State_vector::update_pos(int i)
{
    /*
       if(qubits[1] -> selected())
       {
    // mov left
    move_cursor("Left");
    std::cout << "Moved left" << std::endl;
    }
    if(qubits[3] -> selected())
    {
    move_cursor("Right");
    std::cout << "Moved right" << std::endl;
    }
    */
}

void State_vector::move_cursor(std::string direction)
{
    const int row_size = 4;
    const int col_size = 4;

    if(direction == "Left" || direction == "Right" || direction == "Up" || direction == "Down")
    {
        std::cout << "current pos = " << cursor_pos << ", direction " << direction << std::endl;
        int new_pos = cursor_pos;

        if(direction == "Left")
        { 
            // wrap 0 to num_qubits not -1
            if((cursor_pos % col_size) == 0)
            {
                new_pos = cursor_pos + col_size - 1 ;
            }
            else
            {
                new_pos = cursor_pos - 1;
            }
        }
        else if(direction == "Right")
        {
            // if next position right is at the end wrap it 
            if(((cursor_pos + 1) % col_size) == 0)
            {
                new_pos = cursor_pos - col_size +  1;
            }
            else 
            {
                new_pos = cursor_pos + 1;
            }
        }
        else if(direction == "Down")
        {
            // @TODO fix this 
                new_pos = (cursor_pos + row_size)%num_qubits;
        }
        else if(direction == "Up")
        {
            if(cursor_pos >= row_size)
            {
                new_pos = cursor_pos - row_size;
            }
            else 
            {
                new_pos = num_qubits - row_size + cursor_pos;
            }
        }
        move_cursor(new_pos);
    }

}


void State_vector::move_cursor(int new_pos)
{
    // turn off previous qubit
    flash_off(cursor_pos);
    flash_on(new_pos);

    cursor_pos = new_pos;
}
// flash on
void State_vector::flash_on(int qubit)
{
    qubits[qubit] -> flash = 1;
    flash();
}

void State_vector::flash_off(int qubit)
{
    qubits[qubit] -> flash = 0;
    flash();
}
// overloading 
void State_vector::flash(int qubit_pos)
{
    qubits[qubit_pos] -> flash = (qubits[qubit_pos] -> flash + 1)%2;
    flash();
}

// make the qubit flash
void State_vector::flash()
{
    for(int i = 0; i < num_qubits; i++)
    {
        // if flashing check if led is on or off
        if(qubits[i] -> flash == 1)
        {
            if(qubits[i] -> led_on == true)
            {
                qubits[i] -> set_led(0,0,0); 
                qubits[i] -> led_on = false;
            }
            else 
            {
                qubits[i] -> set_led(); 
                qubits[i] -> led_on = true;
            }
        }
        // else if not flashing check led is on
        else if(qubits[i] -> led_on == false) 
        {
            qubits[i] -> set_led(); 
            qubits[i] -> led_on = true;
        }
    }
}

void State_vector::stop_flash(void)
{
    for(int i = 0; i < num_qubits; i++)
    {
        qubits[i] -> flash = 0;
    }
    // make sure all qubits are on 
    flash();
}

