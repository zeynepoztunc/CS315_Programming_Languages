<?php //php 7.2.24

//example of an unconditional exit using break
$loopVar = 10;

while($loopVar >= 1) {
  $loopVar--;
    break;
}
echo "The value of loopVar after the loop is: $loopVar \n";

//example of using continue
$loopVar = 10;

while($loopVar >= 1) {
  $loopVar--;
   continue;
}
echo "The value of lopoVar after the loop is: $loopVar \n";

//example of breaking the outer loop using break
//the outer for loop
for ($i = 0; $i < 5; $i++) {
   echo "\n Inside the outer loop, i:  $i \n" ; 
   print("------------------------------ \n");

   //the inner for loop
   for ($j = 6; $j < 9; $j++) {
      if ($i == 2) {
        echo "Exiting \n";
        break 2; //terminates the 2nd outer loop
      }
      echo "Inside the inner loop, j:  $j \n" ; 

   }
   echo "\n";
} 

//example of using continue

echo "\n Using continue \n" ; 

//the outer for loop
for ($i = 0; $i < 5; $i++) {
   echo "\nInside the outer loop, i:  $i \n" ; 
   print("------------------------------ \n");

   //the inner for loop
   for ($j = 6; $j < 9; $j++) {

      if ($i == 2) {
        echo "Continuing from outer \n";
        continue;  //continues from the outer loop
      }
          echo "Inside the inner loop, j:  $j \n" ; 
       
   }
   echo "\n";
}
?>