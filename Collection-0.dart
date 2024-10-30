// Day 0 of learning dart

/* Content learnt 
 * Introduction - print hello world
 * Variables in dart
 * Datatypes
 * 
*/

//Simple Hello world
void main(){ 
    print("Hello, world!");
    print(1+1);


    // In dart you can declare variables without specifing their type var.
    // Thanks to type inference, these variables types are determined by their initial values
    var name = 'Alvin';
    var year = 2024;
    var pi = 3.14;
    var planets = ['jupiter', 'mars', 'earth'];
    var image = {
        'tags':['saturn'],
        'url': '//path/to/saturn'
    };

    // dynamic -> used if you dont know the type of variable
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


