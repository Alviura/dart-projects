// Lesson 1 of dart 

/* Content learnt
 * Lists -> More like arrays but they can store variables of different types
 * Maps -> More like dictonaries in python
 * consists of keys:value
 * Loops 
*/

void main(){
  // Lists -> position begins at 0
  var myList = [1,2,3,4];
  print(myList);
  print(myList[0]);
  
  // Change item in list
  myList[0] = 1;
  print(myList[0]);

  // Creating an empty list
  var emptyList = [];
  print(emptyList);

  // Add to an empty list
  emptyList.add(41);
  print(emptyList);
  emptyList.add(55);
  print(emptyList);

  // Add multiple values to a list
  emptyList.addAll([1,2,3]);
  print(emptyList);

  // Insert at a specific position (position, item)
  myList.insert(3, 900);
  print(myList);

  // Insertmany
  myList.insertAll(1, [99,90,97]);
  print(myList);

  // Mixed Lists
  var mixedList = [1,2,3, "James", "Kingston"];
  print(mixedList);

  // Remove from List
  mixedList.remove(1);
  mixedList.remove("James");
  print(mixedList);

  // Remove at a specific location
  mixedList.removeAt(1);
  print(mixedList);
  print(mixedList.length);


  // MAPS -> Key/value pairs
  var toppings = {"John":"Form 2", "Ken":"Form 3", "Jane":"Form 4"};
  print(toppings);
  print(toppings["John"]);

  // print Keys
  print(toppings.keys);

  // print values
  print(toppings.values);

  // Length of map
  print(toppings.length);

  //Add something to the map
  toppings["Tim"] = "Sausage";
  print(toppings);

  //Add many things
  toppings.addAll({"Steve": "Form 1", "Christ": "Form 4"});
  print(toppings);

  // Remove something
  toppings.remove("Tim");
  print(toppings);

  // Remove everything
  toppings.clear(); 
  print(toppings);


  // LOOPS 
  // For Loop for(initialize; condition; update)
  var num1 = 5;
  var i;
  for(i=num1; i>=1; i--){
    print(i);
  }

  // For in loop -> Used if you want to iterate over elements in a collection, like a list or a set
  for(var number in myList){
    print(number);
  }

  // while loop
  while(num1 >=1){
    print(num1);
    num1--;
  }
}

