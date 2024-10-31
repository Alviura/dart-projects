// A simple exercise that loops from integers 1 to 100 and checks for divisibility between 3 and 5
// if the number is divisible by 3 it prints fizz
// if the number is divisible by 5 it prints buzz
// if the number is both divisible by 3 and 5 it prints fizzbuzz

void main (){
  for(var num = 1; num <=100; num++){
    if(num % 5 == 0 && num % 3 == 0){
      print("fizzbuzz");
    } else if(num % 5 == 0){
      print("buzz");
    } else if(num % 3 == 0){
      print("fizz");
    } else{
      print(num);
    }
  }
}