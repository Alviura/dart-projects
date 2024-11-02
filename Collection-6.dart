// Lesson 6 on dart

/* Encapsulation -continuation
 * This file contains the main method and the library Collection-7.dart
 * Inheritance
*/

import 'Collection-7.dart';
void main (){
  Camera c = Camera();
  c.name = "Sony"; // Notice its c.name not c_name because _name is a private property and i have to access it using a setter function
  c.id = 25; 
  c.prize = 2500;
   
  print("ID is ${c.id}");
  print("Name is ${c.name}");
  print("Prize is ${c.prize}");

  Person p1 = Person();
  p1.name = "Harry";
  p1.age = 21;
  p1.displayInfo();

  Student s1 = Student();
  s1.name = "Styles";
  s1.age = 23;
  s1.rollNo = 1324;
  s1.displayInfo();

  Teacher t1 = Teacher();
  t1.name = "Daniel";
  t1.age = 45;
  t1.rollNo = 190;
  t1.displayInfo();

  Cat c1 = Cat();
}

// Inheritance -> Sharing of behaviour between two classes. It allows you to define a class that extends the functionality of another class
/* The extend keyword is used for inheriting from parent class
 * Whenever we use inheritance we create a is-a relation between the parent and child
 * like Student is a Person. Truck is a Vehicle, Cow is a Animal
 * Dart supports single inheritence, a class can inherit from a single class
 * Multilevel inheritance -> A class can inherit a class that has inherited another class
 * Hierarchial inheritance -> A parernt class can have several child classes
 * Dart doesn't support Multiple inheritance
*/

// without inheritance
class Person {
  String? name;
  int? age;

  void displayInfo(){
    print("Name: ${name}");
    print("Age: ${age}");
  }
}

// Student hasn inherited from Person!
class Student extends Person {
  int? rollNo;

  void displayInfo(){
    super.displayInfo(); // super keyword is used to call the parent class method
    print("rollNo: ${rollNo}");
  }
}

// Teacher has inherited from Student
class Teacher extends Person{
  // Properties -> Dont write the ones inherited
  int? rollNo;

  void displayInfo(){
    super.displayInfo();
    print("rollNo: ${rollNo}");
  }
}

// Inheritance of constructor
/* The constructor of the parent class is called first and then, the constructor of child class
*/
class Animal{
  Animal(){
      print("This is the constructor of a parent class");
    }
  }

class Cat extends Animal{
  Cat(){
      print("this is the constructor of child class");
    }
  }


