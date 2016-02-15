# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Leo Kukhar]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# An array.

# What is the output? (i.e. What should the code return?)
# The most frequently used array elements.

# What are the steps needed to solve the problem?

# Create a Hash. 
# Iterate over each element in the array. 
# Identify the highest number of elements in an array
#Display any arrays with that number of elements

# 1. Initial Solution

def mode(array)
	mode = array.inject(Hash.new(0)) {|k,v| k[v] +=1; k}
	maximum = mode.values.max
	return mode.select{|k,v| v == maximum}.keys
end

# 3. Refactored Solution



# 4. Reflection

