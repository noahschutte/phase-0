# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Leo Kukhar]
# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented.

# 0. Pseudocode

# What is the input?
# An array.

# What is the output? (i.e. What should the code return?)
# The most frequently used array elements.

# What are the steps needed to solve the problem?
# 1. Create a Hash. 
# 2. Iterate over each element in the array. 
# 3. Identify the highest number of elements in an array
# 4. Display any arrays with that number of elements

# 1. Initial Solution

=begin
def mode(array)
	mode = array.inject(Hash.new(0)) {|k,v| k[v] +=1; k}
	maximum = mode.values.max
	return mode.select{|k,v| v == maximum}.keys
end
=end

# 3. Refactored Solution

def mode(array)
	mode = array.inject(Hash.new(0)) {|k,v| k[v] +=1; k}
	maximum = mode.values.max
	puts mode.select{|k,v| v == maximum}.keys
end

# 4. Reflection
=begin
**Which data structure did you and your pair decide to implement and why?**

A hash, comprised of the elements in the array. 

**Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?**

Yes. It was very helpful to understand exactly what tasks we needed to research. 

**What issues/successes did you run into when translating your pseudocode to code?**

I thought we were very clear with what we set out to accomplish, because we had written specific tasks in pseudocode.

**What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?**

.inject was ideal for inserting the contents of an array into a hash. I was not familiar with this method prior to the exercise. Also, finding the max value of a hash was much more simple than I thought it would be. 

=end