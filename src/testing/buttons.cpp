
#include "buttons.hpp"


int main(void){

    // make a button for qubit 1 on chip_1 and pin_1 
    Button qubit1(1, 1);

    // check if qubit1 is selected with
    //qubit1.is_pressed();    // returns 0 or 1


    // TWO OPTIONS A CLASS OR DECLARE IN A FUNCTION HERE
    // WANT VECTORS OF BUTTONS, e.g QUBITS, GATES, DISP, FUNCTIONS

    // we want a vector of buttons e.g. for qubits but they need different 
    // constructor arguments as they are on different chips and pins
    // Button_groups();

    // want a vector of buttons for qubits 
    // something like qubit[1] is mapped to chip 1, pin 4
    // qubit[2] chip 1, pin 5 etc
    std::vector<Button> qubit({Button(1,4), Button(1,5)});

    // checking it is doing what we want, it is!
    std::cout<< "There are " << qubit.size() << " qubit buttons" <<std::endl;
    std::cout << "at positions, " <<std::endl; 
    qubit[0].print_pos();
    qubit[1].print_pos();

    // checking reading from spi

    // then we can do
    //    qubit[1].is_pressed();

    //   // or go through list of qubits checking which is selected.
    //    for (int i = 0; i < static_cast<int>(qubit.size()); i++){
    //    if (qubit[i].is_pressed() == 1){
    //    return i;
    //    break;
    //    }
    //    }

}

