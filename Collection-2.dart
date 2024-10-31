// Lesson 3 on dart

/* Content learnt
 * Logic (Condition statements)
 * Functions
 *  Basic fuction
 *  Void function
 *  optional positional function[] & named positional function{}
*/
void main(){
  // Logic - if
  var num = 5;
  if(num == 5){
  print("the number is 5");
  }

  // Logig - if Else
  if(num == 5){
    print("the number is 5");
  }else{
    print("then number is not 5");
  }

  // Logic -if Else if 
  if(num == 5){
    print("the number is 5");
  }else if(num == 3){
    print("the number is 3");
  }else{
    print("the number is neither 3 or 5");
  }

  // Functions -> Block of code which perform a specific task when called
  // Basic format
  myfunc(){
    print("Hello, im a function");
  }
  myfunc();

  // Another format -> Using return keyword
  myFunc(){
    return "Hello, fuctions";
  }
  print(myFunc());

  // I can assign a function to be a value of a variable
  var thing = myFunc();

  // Passing arguments in a function
  anotherFunc(String name4){
    return "Hello $name4";
  }
  print(anotherFunc("John"));

  // Optional parameter -> Dart supports optional parameters which can be made positional by wrapping them in brackets []

  void printInfo(String name, [String? name5]){  // name5 is an optional parameter: doesnt need to be provided when calling the function
    print("Name: $name $name5");
    // if(age != null){
    //   print("Age: $age");
    // }
  }
  printInfo("Alvin");

  // Named optional parameters -> Defined by curly braces
  // They allow you to specify  parameters in a function by name rather than postion
  // The curly braces can be used to make assign non optional parameters default value
  coolFunc(String town, {String country ="Kenya"}){
    print("Hello im from $town, $country");
  }
  coolFunc("Nairobi"); // Prints Nairobi and default value = Kenya
  coolFunc("Nairobi", country:"Uganda"); // Prints Uganda instead of Kenya, 

}