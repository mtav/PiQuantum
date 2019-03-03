/**
 * @brief State vector
 *
 * @detail Implementation of state vector 
 *
 *
 */

#include "state.hpp"

// Print a complex number
void printc(COMPLEX * c) {
  std::cout << "(" << *(c) << ", " << *(c+1) << ")";
}

// Print a complex matrix
void printm(COMPLEX * m) {
  // Print matrix
  for(int i=0; i<2; i++) {
    for(int j=0; j<2; j++) {
      printc(m+(4*i+2*j));
      printf(" ");
    }
    // New row
    std::cout << std::endl;
  }
  // Line break
  std::cout << std::endl;
}

// Using an array of doubles complex type
void cadd(const COMPLEX * a, const COMPLEX * b, COMPLEX * c) {
  *(c) = *(a) + *(b);
  *(c+1) = *(a+1) + *(b+1);
}

// Using an array of doubles complex type
void cmul(const COMPLEX * a, const COMPLEX * b, COMPLEX * c) {
  *(c) = (*a)*(*b) - (*(a+1))*(*(b+1));
  *(c+1) = (*(a+1))*(*b) + (*a)*(*(b+1));
}

// Complex matrix multiplication using the pointer to
// double complex type
void cmatmul(const COMPLEX * a, const COMPLEX * b, COMPLEX * c) {

  // Create working space
  COMPLEX t0[2], t1[2];
  
  // Element (0,0)
  cmul(a,b, t0);
  cmul(a+2,b+4, t1);
  cadd(t0, t1, c);
  
  // Element (0,1)
  cmul(a,b+2, t0);
  cmul(a+2,b+6, t1);
  cadd(t0, t1, c+2);
  
  // Element (1,0)
  cmul(a+4,b, t0);
  cmul(a+6,b+4, t1);
  cadd(t0, t1, c+4);
  
  // Element (1,1)
  cmul(a+4,b+2, t0);  
  cmul(a+6,b+6, t1);
  cadd(t0, t1, c+6);
  
}

// Return an aligned pointer to matrix
COMPLEX * Operator::malloc_gate(int size) {
  // Allocated memory
  mem = malloc(size * sizeof(COMPLEX) + 31);
  if(mem == nullptr) {
    std::cerr << "Unable to allocate memory. Exiting";
    exit(1);
  }
  // Get an aligned pointer
  COMPLEX * m = (COMPLEX * ) (((uintptr_t)mem+31) & ~ (uintptr_t)0x1F);
  return m;
}

// Initialise matrix and return pointer 
COMPLEX * Operator::make_gate(COMPLEX a000, COMPLEX a001,
			      COMPLEX a010, COMPLEX a011,
			      COMPLEX a100, COMPLEX a101,
			      COMPLEX a110, COMPLEX a111) {
  // Make space
  COMPLEX * m = malloc_gate(8);
  
  // Initialise elements
  *(m+0) = a000; *(m+1) = a001; *(m+2) = a010; *(m+3) = a011;
  *(m+4) = a100; *(m+5) = a101; *(m+6) = a110; *(m+7) = a111;
  
  // Return pointer 
  return m;
  
}

Operator::Operator(const double a, const double b,
		   const double c, const double d,
		   const double e, const double f,
		   const double g, const double h)
{
  // Make H gate
  M = make_gate(a,b,c,d,e,f,g,h);  
}

Operator::~Operator() {
  free(mem);
}

// Return the pointer to the matrix
COMPLEX * Operator::get_mat() const { return M; };

// Print the matrix
void Operator::print() {
  // Print matrix
  for(int i=0; i<2; i++) {
    for(int j=0; j<2; j++) {
      printc(M+(4*i+2*j));
      printf(" ");
    }
    // New row
    std::cout << std::endl;
  }
  // Line break
  std::cout << std::endl;
}

/**
 * @brief Writing amplitudes back to the statevector
 *
 * @detail The premise of this function is that it might be
 * faster to set the amplitude writing process off in a thread
 * and get on with computing the next amplitude. There won't be
 * an conflict between amplitudes because the amplitudes to be
 * written will not get used again until the next operation (after
 * which the thread has been joined again). 
 *
 * The approach will only speed up the operations if the write 
 * operation finishes before the next write operation is waiting
 * to begin (to be determined). 
 *
 */
void State::writeback(int a, int b,
		      double u, double v,
		      double w, double x) {
  // Write results to state
  *(state+a) = u;
  *(state+a+1) = v;
  *(state+b) = w;
  *(state+b+1) = x;  
}

/**
 * @brief Complex matrix vector multiplication
 *
 * @detail Multiply selected indices of state by the matrix
 * m. Used as a subroutine in single and two qubit operations.
 * 
 */
void State::cmatvec(const COMPLEX * m, const int i, const int j) {
  
  // Create working space
  COMPLEX t0[2], t1[2], t2[2], t3[2];
  
  // True indices
  int a = 2 * i;
  int b = 2 * j;
  
  // Element i
  cmul(m, state+a, t0);
  cmul(m+2, state+b, t1);
  cadd(t0, t1, t2);
  
  // Element j
  cmul(m+4, state+a, t0);
  cmul(m+6, state+b, t1);
  cadd(t0, t1, t3);

  // Check if the writeback thread is joinable
  if(writeback_thread.joinable()) {
    writeback_thread.join(); // Wait for previous write to finish
  }
  
  // Write results to state
  //*(state+a) = *(t2);
  //*(state+a+1) = *(t2+1);
  //*(state+b) = *(t3);
  //*(state+b+1) = *(t3+1);
  
}


/**
 * @brief Allocate space for the state vector
 *
 * @detail Allocate aligned or unaligned space using
 * the second int argument
 *
 */
void State::malloc_state(int length, int align) {
  if(align == 0) {
    // Make state vector space
    mem = malloc(2 * length * sizeof(COMPLEX));
    if(mem == nullptr) {
      std::cerr << "Unable to allocate memory. Exiting" << std::endl;
      exit(1);
    }
    state = (COMPLEX * ) mem;
  } else {
    // Size of initial storage (twice as much as necessary)
    std::size_t space = 4 * length * sizeof(COMPLEX);
    // Make state vector space (twice as much as necessary)
    void * memory = malloc(space);
    mem = memory; // Save a copy of the location to free later
    if(mem == nullptr) {
      std::cerr << "Unable to allocate memory. Exiting" << std::endl;
      exit(1);
    }
    // Required alignement (state_length boundary)
    int alignment = 2 * length * sizeof(COMPLEX);
    // Re-align the memory and store in state
    state = (COMPLEX * )std::align(alignment, space >> 1, memory, space);
    if(state == nullptr) {
      std::cerr << "Failed to align state vector. Exiting" << std::endl;
      exit(1);
    }
  }
  std::cout << "State vector allocated at: " << state << std::endl;
}
  
/**
 * @brief Construct the state vector object
 *
 * @detail Pass the number of qubits as an argument
 */
State::State(const int num_qubits)
  : num_qubits(num_qubits), state_length(1 << num_qubits),
    state(nullptr), mem(nullptr) {
  
  // Make space for state vector
  malloc_state(state_length, 0);
  
  // Initialise to zero state
  * state = 1.0;
  for(int n=1; n < (2 * state_length); n++)
    * (state+n) = 0.0;

  // Allocate memory for the caches
  magnitudes = (double * ) malloc(state_length * sizeof(double));
  angles = (double * ) malloc(state_length * sizeof(double));

  // Start new thread
  writeback_thread = std::thread(&State::writeback, this);
    
}

/**
 * @brief Free the state vector pointer
 *
 */
State::~State() {
  free(mem);
  free(magnitudes);
  free(angles);
}

// Print the state
void State::print() {
  
  // Print matrix result
  for(int n=0; n < 8; n+=2) {
    printc(state+n);
    // New row
    std::cout << std::endl;
  }
  // Line break
  std::cout << std::endl;
}

/**
 * @brief Single qubit gate
 *
 * @detail Apply a single qubit gate to the state
 * vector. The integer specifies which qubit to 
 * apply to operator to.
 *
 * Optimisations:
 * - Only computes the indices that are necessary: there
 *   are no conditional statements.
 */
void State::sgate(const Operator & op, const int n) {
  COMPLEX * U = op.get_mat();    
  int k = (1 << n);
  for(int i=0; i < state_length; i += 2 * k) {
    for(int j=0; j < k; j++) {
      //bench += i+j+k;
      cmatvec(U, i+j, i+j+k);
    }
  }
}

/**
 * @brief Controlled gate
 *
 * @detail Apply a controlled qubit operation between 
 * control c and target t. The operation is given by
 * op.
 *
 * Currently assumes c < t.
 *
 */
void State::cgate(const Operator & op, const int c, const int t) {
  COMPLEX * U = op.get_mat();    

  int r = (1 << c); // Control: smaller
  int s = (1 << t); // Target: bigger
  for(int i=0; i < state_length; i += 2 * s) {
    for(int j=0; j < s; j += 2 * r) {
      for(int k=0; k < r; k++) {
	// Add up all the indices, including r to get to the control=1
	// indices
	//bench += i+j+k+r+s;
	cmatvec(U, i+j+k+r, i+j+k+r+s);
      }
    }
  }
}

/**
 * @brief State vector averaging
 *
 * @detail Function for computing a averaged 0 and 1 values for
 * each qubit. The zero value is obtained by summing the magnitude of
 * all the zero amplitudes corresponding to a given qubit. The one value
 * is obtained by summing all the amplitudes corresponding to one for
 * the qubit
 *
 * This implementation caches all the magnitude calculations during the
 * averaging for the first qubit (which traverses the entire state vector
 * once). Subsequent qubit averages look up magnitude values in this 
 * cache vector.
 *
 * The function can compute the average values for a state vector of 
 * 20 qubits in 0.18s (on average).
 *
 */
void State::average(double * averages) {

  // Declare tmp variables
  double zero_mag = 0;
  double one_mag = 0;

  // Compute the average for qubit 0, and cache all the amplitudes
  // in the process
  //
  int bit = 1;
  // Increment through the indices above bit
  for(int i=0; i<state_length; i+=2) {
    // Increment through the indices less than bit
    for(int j=0; j<2; j++) {

      // Compute the zero magnitude 
      zero_mag = ((*(state + 2*(i+j))) * (*(state + 2*(i+j)))
		  + (*(state + 2*(i+j)+1)) * (*(state + 2*(i+j)+1)));
      *(magnitudes + i+j) = zero_mag; // Cache the magnitude

      // Angles
      //*(angles + i+j) = atan2(*(state + 2*(i+j)+1),
      //			*(state + 2*(i+j))); // Cache the angle
	
      // Compute the one magnitude
      one_mag = ((*(state + 2*(i+j+bit))) * (*(state + 2*(i+j+bit)))
		 + (*(state + 2*(i+j+bit)+1)) * (*(state + 2*(i+j+bit)+1)));
      *(magnitudes + i+j+bit) = one_mag; // Cache the value

      // Angles
      //*(angles + i+j+bit) = atan2(*(state + 2*(i+j+bit)+1),
      //			    *(state + 2*(i+j+bit))); // Cache the angle
	
    }
  }
  
  // Now compute the averages for all the other qubits, using the cached
  // data
  
  // Loop over all the other qubits, starting from qubit 1
  for(int k = 1; k < num_qubits; k++) {
    
    int bit = (1 << k); // The bit position corresponding to the kth qubit
    int high_incr = (bit << 1); 
    // Increment through the indices above bit
    for(int i=0; i<state_length; i+=high_incr) {
      // Increment through the indices less than bit
      for(int j=0; j<bit; j++) {

	// Accumulate to the zero_mag value
	zero_mag += *(magnitudes + i+j); // Cache the value
	// Accumulate to the zero_mag value
	one_mag += *(magnitudes + i+j+bit); // Cache the value
	  
	  
      }
    }

    // Store the results in the averages vector
    *(averages + 2*k) = zero_mag;
    *(averages + 2*k+1) = one_mag;
  }
}
