# Ruby uses a concept called "pass by reference with value copying" for its function arguments.
# This might seem a bit confusing at first, so let's break it down with examples:

# 1. Pass by Reference (Modifying Objects):
# In Ruby, when you pass an object (like an array, hash, etc.) to a function,
# you're actually passing a reference to that object. This means any changes you make to
# the object inside the function will be reflected in the original object outside the function as well.

def modify_array(arr)
  arr.push(100)
end

numbers = [1, 2, 3]
print "#{numbers} \n"
modify_array(numbers)
print numbers

# When it pushes 100 to the array inside the function, it modifies the original array itself,
# ******* because both the function argument and the original variable refer to the same object in memory. *******


# 2. Pass by Value (Modifying Primitive Data Types):
# when you pass primitive data types (like integers, strings, symbols) to functions,
# Ruby copies the value itself instead of the reference. This means any changes made
# inside the function won't affect the original variable outside the function.

def change_number(num)
  num = num * 2
end

number = 5
puts number
change_number(number)
puts number

# it's only modifying the local copy within the function. The original variable number remains unchanged
# ******* because they hold separate integer values in memory. *******