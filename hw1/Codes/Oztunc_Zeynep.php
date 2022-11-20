<?php 
//php 7.2.24
//initialize
$newArr = array("a"=>"20", "b"=>"40", "c"=>"60");
print_r($newArr);

//get the value for a given key
echo "The value for the key a is: ", $newArr["a"],"\n" ;

// add a new element
$newArr["d"]="80";
print_r($newArr);

//remove an element
unset($newArr['b']);
print_r($newArr);

//modify the value of an existing array
$newArr["d"]="160";
print_r($newArr);

//search for the existence of a key
print_r("Does the key c exist? \n");
if (array_key_exists("c",$newArr))
{
    echo "Key exists \n";
}
else{
    echo "Key does not exist \n";
}
//search for an existence of a value
if( in_array( "60" ,$newArr ) )
{
    echo "The value exists\n";
}
else{
    echo "The value does not exist \n ";
}

//loop through the array
foreach ($newArr as $key => $value) {
 //echo $key;
    foo($key,$newArr);
}

//prints the key-value pair
function foo($x,$newArr) {
    echo "The value for the key ". $x." is ". $newArr[$x]."\n";
} 
?>