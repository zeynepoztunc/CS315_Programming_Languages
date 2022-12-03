#Python 2.7.17

#example of an unconditional exit using break
loopVar = 10
while loopVar >= 1:
  loopVar=loopVar-1
  break
print"Value of the loopVar after the loop is: ",loopVar

print"\n"

#example of an unconditional exit using continue
loopVar = 10
while loopVar >= 1:
    loopVar=loopVar-1

    if loopVar==5: 
        continue
        
print"Value of the loopVar after the loop is: ",loopVar

#example of break statement in enclosing loops
#outer loop
for i in range(0,6):
    print"Inside the outer loop, i:", i
    print"------------------------------"
     
    #inner loop  
    for j  in range(6,9):
        
        #this break statement quits the inner loop
        if i == 2:
            print "Exiting from inner"
            break
        print"Inside the inner loop, j:", j

    print"\n"
print "**********************************************"

#example of continue statement in enclosing loops
#outer loop
for i in range(0,6):
    print"Inside the outer loop, i:", i
    print"------------------------------"
     
    #inner loop  
    for j  in range(6,9):
        
        #this continue statement continues to the next iteration
        if i == 2:
            print "Continuing to the next iteration"
            continue
        print"Inside the inner loop, j:", j

    print"\n"
  
 

