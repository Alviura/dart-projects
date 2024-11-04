// Lesson 10 on dart

/* Content learnt
 * Mixin
 * 
*/

/* Mixin are a way of reusing code in multiple classes. 
 * Mixin are declared using the keyword mixin followed by the mixin name.
 * Mixin use 3 keywords, mixin, with and on.
 * 
 * Mixin cant be instatiated. You can't create object of mixin
 * use the mixin to share the code between multiple classes
 * Mixin has no constructor cannot be extended
 * It is possible to use multiple mixins in class
 * If you want to use mixin in only one class you use on keyword 
*/

mixin Electric {
  void electric(){
    print("This is an electric car");
  }
}
mixin Petro{
  void petro(){
    print("This is a petroluem car");
  }
}

class Tesla with Electric{}

class Hybrid with Electric, Petro{}

// mixin MixiName on ClassName
class Animal{
  void eat(){
    print("Eating..");
  }
}
class Bird extends Animal{
  void chirp(){
    print("Chirping...");
  }
}
class Fish extends Animal{
  void swim(){
    print("swimming...");
  }
}
// using mixin classes
mixin CanFly on Animal {
  void fly(){
    print("flying...");
  }
}
mixin CanSwim on Animal {
  void swim(){
    print("Swimming...");
  }
}
// use mixin in classes
// A class for sparrows that can fly
class Sparrow extends Bird with CanFly {
  @override
  void chirp(){
    print("Chirping like a sparrow");
  }
}
// A class for fish that can only swim
class Goldfish extends Fish with CanSwim {
  @override
  void swim(){
    print("Goldfish swimmming gracefully");
  }
}
// A class for ducks that can swim and fly
class Duck extends Bird with CanFly, CanSwim {
  @override
  void chirp(){
    print("Quacking like a duck...");
  }
}

void main(){
  Tesla t1 = Tesla();
  t1.electric();

  Sparrow sparrow1 = Sparrow();
  sparrow1.eat(); // method inherited this from Bird which was inherited from Animal class // Multi-level inheritance right here
  sparrow1.chirp(); // method inehrited from class Bird
  sparrow1.fly(); // method from mixin CanFly

  Duck duckworth = Duck();
  duckworth.eat();
  duckworth.chirp();
  duckworth.fly();
  duckworth.swim();

  Goldfish goldy = Goldfish();
  goldy.eat();
  goldy.swim();
}

// Different ways of writing mixin
/* mixin MixinName on ClassName
 * class ClassName with MixinName
*/