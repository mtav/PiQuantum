#include <Eigen/Core>
#include <iostream>

//double r2=sqrt(2);
// --------------------- ThE gRaNd StAtE vEcToR cLaSs -----------------
class State_Vectors {
    int num_qubits;
    int size;
    Eigen::VectorXcd vect;

    public:
    // ---------------------- methods -----------------------------
    int get_num_qubits(){return num_qubits;};
    int get_size(){return size;}; 
    int get_eigen_size(){return vect.size();}; 

    void print(void){std::cout << vect << std::endl;};

    // ---------------------- WeIrD iNdEx LoOpInG --------------------

    void apply(Eigen::Matrix2cd op, int qubit)
    {
    };
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
    void single_qubit_op(Eigen::Matrix2cd op, int qubit) {
        int bit = (1 << qubit); // The bit position corresponding to the kth qubit
        int high_incr = (bit << 1); 
        Eigen::Vector2cd temp;
        /// @note this order is correct and super important!
        // Increment through the indices less than bit
        for(int i=0; i<bit; i++) {
            // Increment through the indices above bit
            for(int j=0; j<size; j+=high_incr) {
                // 2x2 matrix multiplication on the zero (i+j)
                // and one (i+j+bit) indices
                //i mat_mul(op, state, i+j, i+j+bit);
                temp = mat_mul(op, vect, i+j, i+j+bit);
                vect(i+j) = temp(0); 
                vect(i+j+bit) = temp(1);
            }
        }
    }

    // returns 2 vector,
    // takes 2x2 matrix
    // vector 
    // and selects the i-th and j-th elements from the vector
    Eigen::Vector2cd mat_mul(Eigen::Matrix2cd op, Eigen::VectorXcd v, int i, int j)
    {
        // make temp vector of size 2
        Eigen::Vector2cd temp;
        temp(0) = v(i);
        temp(1) = v(j);
        return op*temp;
    }

    // ----------------------- constructors --------------------------
    // default case if no qubits are specified
    State_Vectors() : State_Vectors(16) { }

    // if one int passed take as number of qubits 
    State_Vectors(int num_qubits)
    {
        size = pow(2, num_qubits);
        // initialise state vector to zero matrix of correct size
        vect = Eigen::VectorXcd::Zero(size);
        // make the first element 1 (Vacuum state)
        vect(0)=1.0;
    }
};

// ---------------------------------- WoNdErFuL oPeRaToRs ---------------------
class Operators {
    int num_qubits;
    int size;

    public:
    Eigen::Matrix2cd matrix;

    // ---------------------- methods -----------------------------
    int get_num_qubits(){return num_qubits;};
    int get_size(){return size;}; 

    void print(){std::cout << matrix <<std::endl;};
    // ------------------------- IlLeGaL oPeRaToR oVeRlOaDiNg ------------------------
    //friend void operator|(Eigen::Matrix2cd op, int qubit){
    //    single_qubit_op(op, qubit);
    //}

    // ----------------------- CoNsTrUcToR ------------------------
    Operators(int num, Eigen::Matrix2cd mat){
        num_qubits = num;
        matrix = mat;  
    };
};
