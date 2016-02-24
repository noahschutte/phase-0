# Your Names #
# 1) Noah Schutte #
# 2) Jaclyn Feminella #

## We spent [1.5] hours on this challenge. ##

### Bakery Serving Size portion calculator. ###

# Comment most of the code
# Debug from the top
# Pseudocode
# Refactoring
# Add features

# Inputs: What to bake? How many ingredients we have?
# Outputs: 
  # Errors
  # Quantity of things we can bake. 

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # Values are serving sizes
  # Cookbook that gives instruction for ingredients required. 
  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.include?(item_to_make) == false
  
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" if remaining_ingredients == 0 
 
  "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("carrot cake", 5)

###  Reflection ###

## What did you learn about making code readable by working on this challenge? ##

# There are often much more direct methods to accomplish something. Also, in Ruby, it's important to use language and wording that makes contextual sense of what you are interested in accomplishing. 

## Did you learn any new methods? What did you learn about them? ##

# Include? was the only new method. It returns a boolean response for whether an object contains a string or integer.

## What did you learn about accessing data in hashes? ##

# A value can be called by embedding an argument into a hash[key].

## What concepts were solidified when working through this challenge? ##

# Cases, ArgumentError, and include?.