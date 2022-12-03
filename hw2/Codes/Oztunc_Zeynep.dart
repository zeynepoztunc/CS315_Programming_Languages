void main() {
  
   print("Example  of break as an integral part");
   var loopVar = 10; 
   
   while(loopVar >=1) { 
      loopVar--; 
      break;
   } 
   print("The value of loopVar after the loop is: ${loopVar}"); 
  
  print("\n Example  of continue");
   loopVar = 10; 
   
   while(loopVar >=1) { 
      loopVar--; 
      continue;
   } 
   print("The value of loopVar after the loop is: ${loopVar}"); 

 print("\n");
 print("Example  of break in an enclosing loop");
  
 //outer label
 outer: 
    for (var i = 0; i < 5; i++) { 
      print("Inside the outer loop, i: ${i}"); 
      print("------------------------------");
     
      //inner label 
      inner: 
        for (var j = 6; j < 9; j++) { 
         
          //this break statement quits the outer loop
          if (i == 2) {
            print("Exiting from outer");
            break outer; 
          }
          print("Inside the inner loop, j:  ${j}"); 
        }
        print("\n");

  } 
  
  print("\n");
  print("Example  of continue in an enclosing loop"); 
  outer: 
   for (var i = 0; i < 5; i++) { 
      print("Inside the outer loop, i: ${i}"); 
      print("------------------------------");
     
      //inner label 
      inner: 
        for (var j = 6; j < 9; j++) { 
         

          //this break statement quits the outer loop
          if (i == 2) {
            print("Continuing from outer \n");
            continue outer; 
          }
          print("Inside the inner loop, j:  ${j}"); 

        }
        print("\n");
   } 

}

