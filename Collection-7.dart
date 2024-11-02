// Lesson 7 of dart

/* Content learnt
 * Getter method
 * Setter method
*/

class Camera {
  // Private properties

  int? _id;
  String? _name;
  double? _prize;

  // Setter - set keyword
  /* Syntax
   * set variable_name(type variable_name){
   *  setter body
   * }
  */

  set id(int id){
    this._id = id;
  }
  set name(String name) => this._name = name;
  set prize(double prize){
    if(prize <0){
      throw Exception("Prize must not be negative"); 
    } else{
      this._prize = prize;
    }
  }

  // Getter - get keyword

  /* Syntax 
   * return_type get variable_name {
   *   getter body
   * }  
   */
  int get id => _id!;
  String get name => _name!;
  double get prize => _prize!;

  // Setter without set keyword
  void setId() => _id;
  void setName() => _name;
  void setPrize() => _prize;

  // Getter without get keyword
  int getId() => _id!;
  String getName() => _name!;
  double getPrize() => _prize!;


}
