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
    if(btn_ptr -> get_state())
    {
        std::cout << "Op " << name << " pressed" << std::endl;
        return 1;
    }
    else { return 0;}
}

// -------------------------- Paulis 
//

Rotation_X::Rotation_X(std::shared_ptr<Button> btn_ptr_in, int num_qubits_act_on, double theta)
    : angle(theta)
{
    matrix << cos(angle/2.0), sin(angle/2.0),
           sin(angle/2.0), cos(angle/2.0);
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
    matrix << 1.0, 0.0,
           0.0, exp(I_unit * angle);
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

// -------------------- State Vector class 

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
    double epsilon = 1e-5;
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
    }
}
