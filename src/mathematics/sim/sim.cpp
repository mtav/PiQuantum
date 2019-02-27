/*
 * sim.cpp
 *
 */

#include <cstdlib>
#include <cstdint>
#include <iostream>
#include <cmath>
#include <chrono>

#define NUM_QUBITS 20
#define STATE_LENGTH (1 << NUM_QUBITS)

typedef double COMPLEX; 

class Time {
private:
  typedef std::chrono::time_point<std::chrono::steady_clock> CLOCK;
  CLOCK time_a, time_b;
  std::chrono::duration<double> duration;
public:

  // Start the clock
  void start(void) {
    time_a = std::chrono::steady_clock::now();
  }

  // Stop the clock
  void stop(void) {
    time_b = std::chrono::steady_clock::now();
    std::chrono::duration<double> time = time_b - time_a;
    duration = duration + time;
  }
  // Return the duration in seconds
  double runtime(void) {
    return duration.count();
  }

};

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

extern "C" {
  // Complex matrix vector multiplication (assembly)
  void cmatvec3_asm(const COMPLEX * m, COMPLEX * s, const int i, const int j);
}

// Complex matrix vector multiplication
void cmatvec(const COMPLEX * m, COMPLEX * s, const int i, const int j) {

  // Create working space
  COMPLEX t0[2], t1[2], t2[2], t3[2];

  // True indices
  int a = 2 * i;
  int b = 2 * j;
  
  // Element i
  cmul(m, s+a, t0);
  cmul(m+2, s+b, t1);
  cadd(t0, t1, t2);
   
  // Element j
  cmul(m+4, s+a, t0);
  cmul(m+6, s+b, t1);
  cadd(t0, t1, t3);

  // Write results to s
  *(s+a) = *(t2);
  *(s+a+1) = *(t2+1);
  *(s+b) = *(t3);
  *(s+a+1) = *(t3+1);
}

// Return an aligned pointer to matrix
COMPLEX * malloc_gate(int size) {
  void * mem = malloc(size * sizeof(COMPLEX) + 31);
  if(mem == nullptr) {
    std::cerr << "Unable to allocate memory. Exiting";
    exit(1);
  }
  COMPLEX * m = (COMPLEX * ) (((uintptr_t)mem+31) & ~ (uintptr_t)0x1F);
  return m;
}

// Initialise matrix and return pointer 
COMPLEX * make_gate(COMPLEX a000, COMPLEX a001, COMPLEX a010, COMPLEX a011,
		    COMPLEX a100, COMPLEX a101, COMPLEX a110, COMPLEX a111) {
  // Make space
  COMPLEX * m = malloc_gate(8);

  // Initialise elements
  *(m+0) = a000; *(m+1) = a001; *(m+2) = a010; *(m+3) = a011;
  *(m+4) = a100; *(m+5) = a101; *(m+6) = a110; *(m+7) = a111;

  // Return pointer 
  return m;

  // What are you going to do about freeing the memory?
}

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

// Print the state
void prints(COMPLEX * s) {

  // Print matrix result
  for(int n=0; n < 8; n+=2) {
    printc(s+n);
    // New row
    std::cout << std::endl;
  }
  // Line break
  std::cout << std::endl;
}

// Apply a single qubit unitary
void sgate(COMPLEX * U, COMPLEX * state, const int n) {

  int k = (1 << n);
  
  for(int i=0; i < STATE_LENGTH; i += 2 * k) {
    for(int j=0; j < k; j++) { 
      cmatvec(U, state, i+j, i+j+k);
    }
  }
}

// Display average
// The result is stored in the averages array
void state_average(COMPLEX * state, double * averages) {

  // Loop over all the qubits
  for(int k = 0; k < NUM_QUBITS; k++) {
    double zero_mag = 0;
    double one_mag = 0;
    
    int bit = (1 << k); // The bit position corresponding to the kth qubit
    int high_incr = (bit << 1); 
    // Increment through the indices above bit
    for(int i=0; i<STATE_LENGTH; i+=high_incr) {
      // Increment through the indices less than bit
      for(int j=0; j<bit; j++) {
	// zero_mag += (r^2 + i^2)
	zero_mag += ((*(state + 2*(i+j))) * (*(state + 2*(i+j)))
		     + (*(state + 2*(i+j)+1)) * (*(state + 2*(i+j)+1)));
	// one_mag += (r^2 + i^2)
	one_mag += ((*(state + 2*(i+j+bit))) * (*(state + 2*(i+j+bit)))
		    + (*(state + 2*(i+j+bit)+1)) * (*(state + 2*(i+j+bit)+1)));
      }
    }
    // Store the results in the averages vector
    *(averages + 2*k) = zero_mag;
    *(averages + 2*k+1) = one_mag;
  }
}
  

int main() {

  // Function timer
  Time time;

  // Make H gate
  COMPLEX * H = make_gate(1/std::sqrt(2), 0, 1/std::sqrt(2),
			  0, 1/std::sqrt(2), 0, -1/std::sqrt(2), 0);
  
  // Make space
  COMPLEX * state = (COMPLEX * ) malloc(2 * STATE_LENGTH * sizeof(COMPLEX));
  if(state == nullptr) {
    std::cerr << "Unable to allocate memory. Exiting" << std::endl;
    exit(1);
  }
 
  
  // Initialise to zero state
  * state = 1.0;
  for(int n=1; n < (2 * STATE_LENGTH); n++)
    * (state+n) = 0.0;


  //prints(state);

  // Print matrix
  printm(H);
  
  // Print state
  prints(state);
  //return 0;
  //  sgate(H, state, 3);
  time.start();

  // Make space
  double * average = (double * ) malloc(2 * NUM_QUBITS * sizeof(double));
 
  // Make equal superposition
  for(int n=0; n < NUM_QUBITS; n++) {
    std::cout << "Operation " << n << std::endl;
    sgate(H, state, n);
    state_average(state, average);
    for(int k=0; k<NUM_QUBITS; k++) {
      std::cout << "(" << *(average+2*k)<< "," <<*(average+2*k+1)<< "), "; 
    }
    std::cout << std::endl;
  }

  time.stop();
  std::cout << "Total running time: " << time.runtime() << "s" << std::endl;
  
  // Print state
  prints(state);  
  
  return 0;
  
}
