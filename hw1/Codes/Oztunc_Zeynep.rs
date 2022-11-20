//rustc 1.39.0

fn main() {

//initializing the array
    use std::collections::HashMap;
    //let mut newArr = HashMap::new();
    let mut newArr: HashMap<&str, i32> =
    [("a", 4),
    ("b", 3),
    ("c", 4),
    ("d", 2)].iter().cloned().collect();
    println!("{:?}", newArr);

//get the value for the given key
    println!("{}",newArr["b"]);

// add a new element
    println!("Adding a new element with key e");
    newArr.insert("e", 50);
    println!("{:?}", newArr);

//remove an element of an array
     println!("Remove the element with key a");
     newArr.remove("a");
     println!("{:?}", newArr);

//modify the value of an existing element
    println!("Modify the element wih key e");
    newArr.insert("e", 100);
    println!("{:?}", newArr);

//search for the existence of a key
println!("Does the key b exist?");
println!("{}", newArr.contains_key("b"));

//search for the existence of a value
println!("Does the value 40 exist?");
let value_exists = newArr.values().any(|&x| x > 0);
    if value_exists{
            println!("The value exists");
    }
    else{
        println!("The value does not exist");
    }

//loop through the array
 for (key, value) in &newArr {
       foo(key.to_string(),*value);
  }
}
//foo function
fn foo(key:String,value:i32){
     print!("{}: {} ", key, value);
}
