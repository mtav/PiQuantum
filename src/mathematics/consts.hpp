#include <Eigen/Core>
#include <complex>
#include <stdlib.h>

typedef std::complex<double> CD;

// 2x2 single qubit gates
Eigen::Matrix2cd X, Y, Z, H;

// 4x4 two-qubit gates
Eigen::Matrix4cd CNOT, CPHASE;

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
    
    void print(int pos){std::cout << vect(pos) << std::endl;};

    
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
        vect(0)=CD(1.0,0.0);
    }
};


