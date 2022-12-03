--example of an unconditional exit
local loopVar=10
while( loopVar>=10 )
do
   loopVar=loopVar-1
   break
end

print("The value of loopVar after loop is: ".. loopVar)

--using break in enclosing loops    
--outer loop
for i=0,5 do
  print("Inside the outer loop, i:"..i); 
  print("------------------------------");

    --inner loop
    for j=6,8 do                  
         --this break statement quits inner loop
         if i == 2 then
            print("Exiting from the inner for loop")
            break
          end

        print("Inside the inner loop, j ".. j)
    end


    print("\n")
end

--example of goto
  print("Using goto to exit")
  for i=0,5 do
  print("Inside the outer loop, i:"..i); 
  print("------------------------------");

      for j=6,8 do                  
      print("Inside the inner loop, j: ".. j)

          --this goto statement jumps to Exit label
          if i == 2 then
             print("Exiting from the inner for loop")
             goto Exit
           end
    end
    print("\n")
  end
  :: Exit ::

   
