/**
 * @file testing main cpp for std::vectors of pointers using unique pointers
 */

#include "objects.hpp"
#include <iostream>
#include <vector>

#include <memory>

int main(void)
{
    // make a holder of size 4 objects
    Object_manager state(4);

    std::cout << "\nstate owns " << state.objs.size() << " objects" << std::endl;

    state.display(); 

    // test we can set properties of each object.
    for( int i = 0; i < 3; i++)
    {
        std::cout << "\nadd one to every objects position" << std::endl;
        state.add_one();
        state.display();
    }
    return 0;
}
