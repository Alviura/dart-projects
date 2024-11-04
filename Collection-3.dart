// Lesson 3 on dart

/* Content learnt
 * Getting user input in dart
 * Convert Strings, Ints and Doubles
 * 
 * 
*/

import 'dart:io'; // The libray used to read user input

void main(){
  // // prompt user for input
  print("Enter your name");

  // allow the user to enter their name
  var name = stdin.readLineSync(); // only used for Strings

  print("Hello, $name");

  // Convert String to Int
  var a, b, c;
  a = "1";
  b = 2;
  c = int.parse(a);
  print(c + b); // prints 3

  // String to double
  var d, e, f;
  d = "0.3";
  e = 40;
  f = double.parse(d);
  print(f+e);

  // int to Sting
  var g, h, i;
  g = 40;
  h = "1";
  i = g.toString();
  print(h + i);

  // User Input Typr conversion 
  // This snippet prompts the user to enter a number
  // Checks if the input is null or empty string before converting it to an integer
  // Adds 10 to the integer and prints it out
  
  print("Enter a number");
  var nummy3;

  var nummy = stdin.readLineSync();
  if(nummy != null && nummy.isNotEmpty){
    var nummy2 = int.parse(nummy);
    nummy3 = nummy2 + 10;
    print("$nummy + 10 = $nummy3");
  }else{
    print("Input required");
  }

  





}