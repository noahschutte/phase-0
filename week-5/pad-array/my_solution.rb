# Pad an Array

# I worked on this challenge [by with: Leo Kukhar]
# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented in the file.

# 0. Pseudocode

# What is the input?
# 3 inputs: array, minimum size for the array, and the padder

# What is the output? (i.e. What should the code return?)
# An array that includes padding if it does not meet the minimum size

# What are the steps needed to solve the problem?
# 1. define a method called pad
# 2. create a loop that end when the array meets the minimum size
# 3. add the padding to the end of the array 
# 4. return the new array

# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
   while array.length < min_size
      array.push(value)
   end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
   array_1 = array.clone
   while array_1.length < min_size
     array_1.push(value)
   end
 return array_1
end
=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
   while array.length < min_size
      array.push(value)
   end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
   array_1 = array.clone
   while array_1.length < min_size
     array_1.push(value)
   end
 return array_1
end

# 4. Reflection
=begin

**Were you successful in breaking the problem down into small steps?**

Yes. The loop we created seemed fairly intuitive. It really only seemed like 4 clear steps in the pseudocode. 

**Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?**

It seemed easy to translate our pseudocode into ruby, but the syntax did not come as easily. We had to play with a few terms first in order to get them properly working. 

**Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?**

No. We encountered issues using .push. I was unfamiliar with the method and had to research before we were able to construct the solution.

**When you refactored, did you find any existing methods in Ruby to clean up your code?**

Marginal differences. It was difficult to make the solution shorter, but we were able to clear up some confusing use of characters. 

**How readable is your solution? Did you and your pair choose descriptive variable names?**

Yes. The only real variable is array, which is exactly the word choice of the problem. 

**What is the difference between destructive and non-destructive methods in your own words?**

Destructive methods change the original object that a variable is referencing. We had a more difficult time creating a destructive method, because we found that without a clone, any changes were being made to the object of both original variables. 

=end