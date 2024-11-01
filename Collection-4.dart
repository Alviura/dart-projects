// Lesson 4 on dart

/* Content learnt
 * OOP concepts:
 *  Classes and Objects
 *  Constructurors
 *    Default constructor
 *    parameterized constructor with named parameters
 *    Named constructor
 *    Constant constructor
 */

// Class -> A blueprint that allows you to create an object
// Object -> An realworld entity expressed / mapped out into a program, an instance of a class

void main(){
  // Creating an object
  //className objectName = Constructor(arguments);
  Person p1 = Person("Calvin", "Male", 21);
  print(p1);
  p1.showData();
  print(p1.name);

  Human h1 = Human(name: "Alvin", planet: "Earth", age: 20, height: 1.72); // instantiates the object h1 with Alvin as the value for name and Earth as the default value for planet
  print(h1.planet);
  h1.displayInfo(); 

  CartessianPlane plane1 = CartessianPlane(1, 2);
  plane1.displayInfo();
  CartessianPlane plane2 = CartessianPlane.origin();
  plane2.displayInfo();
  
  Car c1 = Car(name:"Subaru");
  c1.display(); // Prints subaru
  c1 = Car.twoEntities(name: "Toyota", color: "Blue"); // Ive modified the value of c1 using another constructor
  c1.display(); // Prints toyota and blue

  // Constant constructor
  Point q1 = const Point(x: 10, y: 9);
  Point q2 = const Point(x: 12, y: 11);
  q1.printInfo();
  q2.printInfo();


  
}
class Person{
    // Properties
    String? name, sex;
    int? age;

    /* Constructors -> special method used to create and initialize an object
    * has the same name as the class name
    * has no return type
    * if no constructor is created, dart automatically creates a default constructor with no parameters
    */


    // simpler way of writing a constructor using this keyword
    Person(this.name, this.sex, this.age);
    
    //Default way of a writing a constructor
    // Person(String name, sex, int age){
    //   this.name = name;
    //   this.sex = sex;
    //   this.age = age;
    // }
    // Methods -> Functions in a class, actions that the object will be doing
    void showData(){
      print("Name: $name");
      print("Sex: $sex");
      print("Age: $age");
    }

  }
  class Human{
    String? name, planet;
    int? age;
    double? height;

    Human({this.name, this.planet, this.age, this.height});// parameterised constructor that has named paremeters
    void displayInfo(){
      print("Hello there, my name is $name from planet $planet");
      print("I'm $age years old with a height $height m");
    }
  }
  // Named constructor -> Clarifies the purpose of a constructor or allows the creation of multiple constructors for the same class
  class CartessianPlane{
    double x, y;

    CartessianPlane(this.x, this.y);
    CartessianPlane.origin({this.x = 0, this.y = 0}); // named constructor 

    void displayInfo(){
      print("the points are $x, $y");
    }
  }
  class Car{
    String? name, color;
    double? prize;

    Car({this.name, this.color, this.prize}); // Default Constructor 
    Car.twoEntities({this.name, this.color}); // Named Constructor 
    
    void display(){
      print("Name: $name");
      print("Color: $color");
      print("Prize: $prize");
    }
  }

  // Constant constructor -> You cant change the value of the objrct after initializing the value
  /* Rules when declaring a constant constructor
   * All properties of the class must be final
   * It does not have a body
   * Only class containing const constructor is initialized using const keyword
  */

  class Point {
    final int x;
    final int y;

    const Point({required this.x, required this.y}); // keyword required specifies that the values x and y must be input when creating the object

    void printInfo(){
      print(x);
      print(y);
    }
  }