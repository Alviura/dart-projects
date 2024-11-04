// Lesson 9 of dart

/* Content learnt
 * Abstract class
 * Interface
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

/* Interface defines a syntax that a class must follow.Other classes can themn implement the interface to provide specific implementations. It is a contract that defines the capabilities of a class
 * It is used to achieve abstrction in the dart
 * the keyword implements is used to implememnt an interface
 * Intefaces allows multiple inheritance in dart, you can use multiple interfaces
*/

class Fruit{ // this is an interface class
  String? name;
  bool? ripe;

  void isfruitRipe(bool ripe, String name){
    print("${ripe},the $name is ripe and okay to consume");
  }
}
class Apple implements Fruit{ // the class that implements an interface must have the same properties and methods as defined by the inteface
  String? name;
  bool? ripe;
  String? fname;

  void isfruitRipe(bool ripe, String name){
    print("${ripe}, the ${name} is ripe and okay to consume");
  }
}

// Multiple inheritance
abstract class Area{
  int area(int length, int width);

}
abstract class Perimeter{
  int perimeter(int length, int width);
}
class Rectangle implements Area, Perimeter{
  int? length, width;

  // implentation of area()
  @override
  int area(int length, int width){
    return length * width;
  }

  // implementation of perimeter()
  @override
  int perimeter(int length, int width){
    return length + width;
  }
}

void main(){
  Bus b1 = Bus();
  b1.stop();
  b1.start();

  Apple a = Apple();
  a.isfruitRipe(true, "Apple");

  Rectangle r1 = Rectangle();
  print("Area is ${r1.area(7, 7)}");
  print("Perimeter is ${r1.perimeter(7,7)}");
}