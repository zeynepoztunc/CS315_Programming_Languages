
void main() {
 //initializing the array
var newArr = {
'a': 10,
'b': 20,
'c': 30,
'd': 40,
'e': 50,
'f': 60,  
};
print(newArr);


//get the value for the given key
print("The value for the key a is:");
print(newArr['a']);

// add a new element
newArr['g '] =70;
print(newArr);
  
//remove an element of the array
newArr.remove('f');
print(newArr);

//modify the value of an existing element
print("The initial value of e is : ");
print(newArr['e']);
newArr['e'] =100;
print("The value of e after modification is: ");
print(newArr['e']);

//search for the existence of a key
print(newArr.containsKey("a"));
print(newArr.containsKey("z"));

//search for the existence of a value
int value=20;
print("Does the value $value  exist in the array?");
print(newArr.containsValue(20));

//loop through the array
  for (String key in newArr.keys){
    foo(key,newArr);
 }

//foo function
}
void foo(key,newArr){
   print("The value for the key $key is: ");
   print(newArr[key]);
}

