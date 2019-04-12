/** 
 * @file temp object header for testing std vectors
 */

#include<string>

#include <vector>
#include <memory>
#include <iostream>

class Object
{
    private:
        int position;
        std::string label;
    public:

        // default constructor 
        Object() 
        {
            position = 0;
            label = "default";
        }

        // optional constructor
        Object(int pos) : position(pos) {}

        // optional constructor
        Object(int pos, std::string name) : position(pos), label(name){}

        void set_position(int new_pos){position = new_pos;}
        void set_label(std::string new_label){label = new_label;}

        int get_position() {return position;}
        std::string get_label() {return label;}
};

// class using a container of Objects
class Object_manager
{
    private:
        int num_of_objects;

        // list of the first 4 objects positions 
        std::vector<int> obj_args{0,1,2,3};

    public:
        std::vector<std::unique_ptr<Object> > objs;

        // constructor
        Object_manager(int size) : num_of_objects(size)
    {
        // push back num_of_objects into the objs container
        for(int i = 0; i < num_of_objects; i++)
        {
            objs.push_back(std::make_unique<Object>(obj_args[i]));
        }
    }

        // writes out all objects positions.
        void display()
        {
            for(int i = 0; i < (int)objs.size(); i++)
            {
                std::cout << "Object " << i << "'s position is " << objs[i] -> get_position() << std::endl;
            }
        }

        // add 1 to objects positions
        void add_one()
        {
            for(int i = 0; i < (int)objs.size(); i++)
            {
                int old_pos = objs[i] -> get_position();
                objs[i] -> set_position(++old_pos);
            }
        }
};
