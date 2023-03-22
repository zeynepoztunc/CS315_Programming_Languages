//outer function that calcultaes the price of an item
double calculatePrice(double dollar){
  
  // inner function that converts the item to lira
  double convertDollarToLira(double d) { 
    return d * 18.64;
  }
  //returns the price of the item 
  return 100 + convertDollarToLira(dollar);//adds 100 lira for taxes
}

//scope of local variables
void scopeExample(){
  
  //scope of the local variables
  int localVar=10;//mainVar's scope is inside scopeExample function

  //loopVar's scope  is only inside the loop
  for(int loopVar=0; loopVar<3; loopVar++)
  {
    print('loopVar is:  $loopVar');
    print('localVar is:  $localVar');
  }
    //print('loopVar is:  $loopVar'); error!
    print('localVar is:  $localVar');
    //print('fooVar is:  $fooVar'); error!
}
void foo(){
  var fooVar;
}

//example function demonstrating pass by value
void newString(String param1){
  param1="ENG 401";  
}

//required positional parameter
int product(int x, int y){
  
  return x * y;
}

//positional parameters, second one is optional
void printNames(String name1,[String? name2]) {
  print("First name is: $name1");
  
  if(name2 != null){
      print("Second name is: $name2");
  }
}

//required positional parameters
int subtraction({required int x, required int y}) {
  return x-y;
}

//named parameters, second one is optional
void printMovies({required String movie1, String? movie2}) {
  print("First movie is: $movie1");
  
  if(movie2 != null){
      print("Second movie is: $movie2");
  }
}

//example of a closure
//a function that multiplies two numbers
Function mul(num firstOperand) {
  return (num x) => firstOperand * x;
}

void main(){
double dollarPrice=15;//price of the product in dollars
double liraPrice;//price of the product in liras
  
//calculate the price of the product in liras using nested suprograms
liraPrice= calculatePrice(dollarPrice);
  
//print the price to the console
print('The price of the product in lira is : $liraPrice');
  
//calling the scopeExample function
scopeExample();
  
//example of pass by value in Dart
//defining a new string
String courseName="CS 319";
newString(courseName);
print('The course name is : $courseName');//course name is unchanged

  
//calling a function with required positional parameters
int result= product(2,3);
print(result);
//product(2); too few positional arguments!
  
printNames("Elif","Selin");
printNames("Ayşe");

//calling a function with required named parameters
int sub = subtraction(x:5,y:1);
//sub=subtraction(x:5); error! an argument for y should be given
print('$sub');
  
//calling a function with named parameters
//second parameter is optional while the first is required
printMovies(movie1:"Forrest Gump", movie2:"Godfather");
printMovies(movie1:"Triangle of Sadness");

//create a function that multiplies 10
var secondOperand = mul(10);//mul closes over secondOperand

//pass 7 to that function
print(secondOperand(7));

 
}