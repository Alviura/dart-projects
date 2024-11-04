// Lesson 0 of dart

/* Content learnt 
 * Introduction - print hello world
 * Variables in dart
 * Datatypes
 * 
*/


// Dart is a general purpose language created by Google designed to be simple, flexible and efficient for building both client and server side apps.
//Simple Hello world
void main(){ 
    print("Hello, world!");
    print(1+1);

    // Variables 
    // In dart you can declare variables without specifing their type var.
    // Thanks to type inference, these variables types are determined by their initial values
    var name = 'Alvin';
    var year = 2024;
    var pi = 3.14;
    var planets = ['jupiter', 'mars', 'earth'];
    var student = {
        "Alvin": 12,
        "John": 13,
    };
    print(student);

    // dynamic -> used to define a variable that can hold values of any type, aand tou dont want to impose any restrictions on the type
    // Its used to if are uncertain with the types of the calues, for instance if you are dealing with user input, JSON responces, or data form APIs
    dynamic firstName = 'Clinton';

    // const and final-> for variables with fixed values
    const gravity = 9.8;
    final String lastName = 'Kalin';

    // Datatypes

    // Integers
    int myNum = 34;
    print("Integer: $myNum");

    // Double
    double otherNum = 19.95;
    print("Double: $otherNum");

    // String
    String schoolName = 'JKUAT';
    print("String: $schoolName");

    // Booleans
    bool myBool = false;
    print("Boolean: $myBool");

    // Dynamic 
    dynamic cityState = 'Nairobi';
    print("Dynamic: $cityState");

    

}


