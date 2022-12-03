#ruby 2.5.1 

#example of unconditional exit using break
loopVar=10

while loopVar >= 1
   loopVar = loopVar - 1
   break
end
puts "The value of the loop variable after the loop is: #{loopVar}"

#example of unconditional exit using next
loopVar=10

while loopVar >= 1
    loopVar = loopVar - 1
    next
end
puts "The value of the loop variable after the loop is: #{loopVar}"

#example of using break in enclosing loops
#outer loop
for i in 0..4 do
     
    puts "Inside outer loop, i is: #{i}"
    puts "------------------------------"
        
    #inner loop
    for j in 6..8 do
        if i==2
            puts "Exiting \n"
            break
        end
   
        puts "Inside inner loop, j is: #{j}"
    end         
    puts "\n"
      
end
    
    
puts "\n Using next \n"
#example of using next in enclosing loops
#outer loop
for i in 0..4 do
     
    puts "Inside outer loop, i is: #{i}"
    puts "------------------------------"
        
    #inner loop
    for j in 6..8 do
        if i==2
            puts "Continuing \n"
            next
        end
        puts "Inside inner loop, j is: #{j}"
    end
        
        
    puts "\n"      
end