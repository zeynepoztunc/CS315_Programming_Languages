#ruby 2.5.1 

#initialize
newArr = {'a'=> 10, 'b'=> 20, 'c'=>30,'d'=>40}
puts newArr

#get the value for a given key
puts newArr['a']

# add a new element
newArr['e']=50
puts newArr

#remove an element
newArr.delete('b')
puts newArr

#modify the value of an existing 
newArr['e']=100
puts newArr

#search for an existence of a key
if newArr.assoc('c')
    puts "The key exists"
else 
    puts "The key does not exist"
end
    
#search for the existence of a value
 puts newArr.flatten.include?(10)

#prints the key-value pair
def foo(key,newArr)
    puts "The value for the key #{key.inspect} is #{newArr[key].inspect}"
end
        
#loop through the array
for key in newArr.keys.sort
    foo(key,newArr)
end
