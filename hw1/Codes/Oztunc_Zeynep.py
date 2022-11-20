#python 3.6.9

#initialize
newArr = {'a': 10, 'b': 20, 'c':30,'d':40}
print(newArr)

#get the value for a given key
print(newArr["a"])

# add a new element
newArr["e"] = "50"
print(newArr)

#remove an element
del newArr["e"]
print(newArr)

#modify the value of an existing element
newArr["a"] = "11"
print(newArr)

#search for the existence of a key
if "b" in newArr:
 print ("The key exists")
else:
  print ("Key does not exist")

#search for an existence of a value
if 30 in newArr.values():
 print ("The value exists")
else:
  print ("The value does not exist")
    
#prints the key-value pair
def foo(key):
     print(f"The value for the key ", key ," is ", newArr[key])
        
#loop through the array
for val in newArr:
    foo(val)
 
