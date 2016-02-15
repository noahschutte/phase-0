# Pad an Array

# I worked on this challenge [by with: Leo Kukhar]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

# 3 inputes: array, minimum size for the array, and the padder

# What is the output? (i.e. What should the code return?)

# An array that includes padding if it does not meet the minimum size

# What are the steps needed to solve the problem?




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

Were you successful in breaking the problem down into small steps?
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?

=end