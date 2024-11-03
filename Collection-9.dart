// Lesson 9 of dart

/* Content learnt
 * Abstract class
 * 
*/

// Abstract class-> A class that cannot be initialized. It is used to define classthat can be inherited by other classes
// Declared by the keyword abstract

/* Syntax
 * abstract class ClassName{
 *    // body of the class
 *     method();
 *     method();
 * }
*/

abstract class Vehicle {
  // Abstract methods
  void start();
  void stop();

  // Non abstract methods
  void display(){
    print("This is from vehicle abstract class");
  }
}
class Bus extends Vehicle{
  // we define the methods of the abstract in its sub-class
  @override
  void start(){
    print("Bus is starting");
  }

  @override
  void stop(){
    print("Bus stopped");
  }
}

void main(){
  Bus b1 = Bus();
  b1.stop();
  b1.start();
}