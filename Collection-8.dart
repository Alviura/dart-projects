// Lesson 8 on dart

/* Content learnt
 *
 * super keyword used to inherit properties, methods and constructor
 * Polymorohism
 * Static keyword
 * Enum keyword
*/

class Person {
  String? fname, lname;
  int? age;
  String text = "Im breathing";


  Person(this.fname, this.age);

  Person.lname(this.lname, this.age); //named constructor

  void prinInfo(){
    print("I'm a person");
  }
}

class Student extends Person{ // Student class inherits Person
  int? rollNo;

  Student(this.rollNo, String fname, int age):super(fname,age); // super used to inherit the first constructor
  Student.lname(this.rollNo, String lname, int age): super.lname(lname, age); // super used to inherit the second constructor
  
  void displayInfo(){
    //super.prinInfo(); // super is used to call the method of the super class;
    print("Text: ${super.text}"); // super is used to call the property text of the super class
    if(fname!= null){
      print("$rollNo: $fname: $age");
    }else{
      print("$rollNo: $lname: $age");
    }
  }
}

// Polymorphism -> poly means many and morph means forms
/* Polymorphism is the ability of an object to take on many forms
 * Polymorphism is updaating or modifying the feature, function or implementationthat already exist in the parent class
 * Polymorphism is achieved through method overriding
*/

// Method overriding is the technique of creating a method in the child class that has the same name as the method in the parent class

class Animal {
  void display(){
    print("Animal is displayed");
  }
}
class Dog extends Animal{
  @override
  void display(){
    print("Dog is displayed");
  }
}


/* Static keyword -> Used to declare a class-level variable or method, meaning it belongs to the class itself rather than to any instance of a class
 * Used to define a property or method that is shared by all instances of a class
 * Used for memory management
 * 
 * Syntax
 * static-keyword data-type property-name;
 * 
 * Static variables/Class variables can't be instantiated by objects, they are accessed directly with Class name
*/

class Circle {
  static const double pi = 3.14; // Static variable
  String? color;

  static num calculateArea(num r){ // Static method
    return pi*r*r;
    //myNormalfunction(); // cannot call a instance functions
    //this.color; // Cannot use 'this' keyword and even cannot access Instance variables

  }
  myNormalfunction(){
    calculateArea(45); // can call a static method in a normal method
    this.color = "red";
    print(pi); // can access static variable

  }
}

// Enum -> Used to store a fixed number of constant values
/* Syntax
 *
 *  enum enumName {
 *    constantName1,
 *    constantName2,
 *    constantName3
 *    ....
 *    constantNameN
 * }
*/

enum Day {
  Sunday, 
  Monday,
  Tuesday,
  Wednesday,
  Thursaday,
  Friday,
  Saturday
}

enum Gender { Male, Female, Other }
class Someone {
  String? name;
  Gender? gender;

  Someone(this.name, this.gender);
}

void main(){
  Student s1 = Student(123, "Jamie", 12);
  Student s2 = Student.lname(134, "Mary", 19);
  s1.displayInfo();
  s2.displayInfo();

  // Polymorphism -> Method overriding
  Animal a = Animal();
  a.display();
  Dog d = Dog();
  d.display();

  // Static keyword
  print(Circle.pi);
  var area = Circle.calculateArea(7);
  print(area);

  // Enum
  Day day = Day.Saturday;
  print(day);
  print(Day.values);

  Someone so1 = Someone("Alvin", Gender.Male);
}