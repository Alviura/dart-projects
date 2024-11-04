// Lesson 11 on dart

/* Content learnt
 * Factory constructor
 * 
*/

// Factory constructor -> constructor written using keyword factory
// Generative constructor -> the normal constructor -> initializes the object
// Similar to static method & must return instance using return statement

/* Rules for factory constructor
 * It has a return type-> it has to return an instance of the class or even subclass
 * You can't use "this" keyword inside factory constructor
 * it can be named or unnamed and called like normal constructor
 * It can't access instance members of the class, its body cant contain properties and functions of that class
 * Can access static variables and methods of a class
*/

class Abc {
  Abc.someName();

  // unnamed factory constructor
  factory Abc({int? age, String? sex}){
    return Abc.someName(); // returns an instance of a class; object
  }
}

enum ShapeType {triangle, rectangle}

abstract class Shape{
  factory Shape(ShapeType type){ // the factory constructor decides which shape instance to create
    if(type == ShapeType.rectangle){
      return Rectangle();
    }else{
      return Triangle();
    }
  }
  void draw();
}
class Triangle implements Shape {
  void draw(){
    print('triangle');
  }
}
class Rectangle implements Shape {
  void draw(){
    print('rectangle');
  }
}
void main(){
  Abc obj = Abc(age: 12, sex: "Male");
  var s1 = Shape(ShapeType.rectangle); // created instance of rectangle
  var s2 = Shape(ShapeType.triangle); // created instnce of triangle

  s1.draw();
  s2.draw();

}