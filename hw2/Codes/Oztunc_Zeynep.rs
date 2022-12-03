//rustc 1.39.0
fn main() {
    //example of unconditional exit using break
   let mut loopVar = 10;
   while loopVar >= 1{
      loopVar-=1;
      break;
   }
   println!("The value of loopVar after the loop is {}",loopVar);
    
   //example of using continue
   let mut loopVar = 10;
   while loopVar >= 1{
       loopVar-=1;
       continue;
   }
   println!("The value of loopVar after the loop is {}",loopVar);
    
	//example of break in enclosing loops
    //outer label
    'outer: 
        for i in 0..5 {
        println!("Inside the outer loop, i : {}", i);
        println!( "------------------------------");

        //inner label
        'inner:    
        for j in 6..9 { 
            
            //condition for breaking
            if(i==2){
               println!("Exiting\n");
               break 'outer;
            }
            println!("Inside the inner loop, j : {}", j);

        }
        println!( "\n");
    }
    
    println!("Example of continue \n");
    //example of continue in enclosing loops
    //outer label
    'outer: 
        for i in 0..5 {
        println!("Inside the outer loop, i : {}", i);
        println!( "------------------------------");

        //inner label
        'inner:    
        for j in 6..9 { 
            
            //condition for continuing
            if(i==2){
               println!("Continuing");
               continue 'outer;
            }
            println!("Inside the inner loop, j : {}", j);

        }
        println!( "\n");
    }
}