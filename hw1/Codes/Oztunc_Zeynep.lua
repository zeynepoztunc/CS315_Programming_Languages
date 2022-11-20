--lua 5.3

--initializing the array
local newArr = { ["a"] = 10, 
    ["b"] = 20,
    ["c"] = 30,
    ["d"] = 40
}  
 for key,value in pairs(newArr) do
    print (key .. " - " .. value)
 end

--get the value for the given key
  print("The value for the given key a is: " .. newArr["a"])

--add a new element
print("Adding a new element with the key e")
 newArr["e"] = 50    
for key,value in pairs(newArr) do
        print (key .. " - " .. value)
end

--remove an element of an array
print("Removing the element with the key b ")
newArr["b"] = nil
for key,value in pairs(newArr) do
        print (key .. " - " .. value)
end

--modify the value of an existing element
print("The value of e is modified to 100")
 newArr["e"] = 100 
for key,value in pairs(newArr) do
        print (key .. " - " .. value)
end

--search for the existence of a key
local k1="a"
local k2="w"
print("Search for the existence of key: "..k1)
print(newArr[k1] ~= nil)
print("Search for the existence of key: "..k2)
print(newArr[k2] ~= nil)


--search for the existence of a value
local val=30
local isFound=0
print("Search for the existence of value: "..val)
for key in pairs(newArr) do
    if(newArr[key]==val)
        then
        isFound =1
     end
end
if isFound==1
    then 
        print ("The value exists")
    else
        print ("The value does not exist")
end

--foo function
function foo(key)
   print("The value for the key ".. key.. " is: "..newArr[key])
end

--loop through the array
for key in pairs(newArr) do
   foo(key)
end