// Lesson 5 on dart

/* Content learnt
 * Encapsulation
 * 
*/

class Student {
  final String? name, regNo;
  final int?  age;

  const Student({this.name, required this.regNo, this.age});

  void displayInfo(){
    print("Name: $name");
    print("RegNo: $regNo");
    print("Age: $age");
  }
}


// Encapsulation -> Hiding a data within a library, helps to controll your program and prevent it from external factors
// Library -> Collection of classes and functions, have a .dart extention
// we use keyword import to use a library 

/* Encapsulation is achieved by
 * Declaring a class properties as private by using underscore (_)
 * providing public getter and setter methods to access and update the value of private property
 * Encapsulation happens at library level not class level
 * 
 * Getter -> Used to get/ access the value of a private property
 * Setter -> Used to set/ update the value of a private property
*/

class Employee {
  // Private properties
  String? _empName;
  int? _id;
  final String companyName = "Dolphin. Inc";


  // getter method to access private property _id
  int getId(){
    return _id!; // null assertion operator, tells the compiler "I am certain this variable is not null. Forces a nullable variable to be treated as non-null"
  }
  // getter to get employee name
  String getName(){
    return _empName!;
  }
  // getter to get compaanyName
  String getCompname(){
    return _empName!;
  }

  
  // Setter method to update private property _name
  void setName(String name){
    this._empName = name;
  }
  // Setter method to update property _id
  void setId(int id){
    this._id = id;
  }

}
void main (){
  Student s1 = const Student(name: "Flinn", age: 13, regNo: "SCM211-5673/2003");
  s1.displayInfo();

  Employee emp1 = Employee();
  emp1.setName("John"); // Sets the value of the empName to John
  emp1.setId(12); // Sets the value of the idNo to 12

  print("Id: ${emp1.getId()}"); // returns the idNo
  print("empName: ${emp1.getName()}"); // returns the empName;
}