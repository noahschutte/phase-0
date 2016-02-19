# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# 0. Pseudocode

# What is the input?
# A random integer. 

# What is the output? (i.e. What should the code return?)
# A string with commas.

# What are the steps needed to solve the problem?
#  1. Convert integer to string.
#  2. Add Control flow 
#  3. Return numbers with length of X: return portion of array and concat with commas.

# 1. Initial Solution

def separate_comma(num)
	str = num.to_s
	return str if str.length < 4
	return str[0] + "," + str[1..3] if str.length < 5
	return str[0..1] + "," + str[2..4] if str.length < 6 
	return str[0..2] + "," + str[3..5] if str.length < 7
	return str[0] + "," + str[1..3] + "," + str[4..6] if str.length < 8
	return str[0..1] + "," + str[2..4] + "," + str[5..7] if str.length < 9
end

# 2. Refactored Solution

def separate_comma(number)
   reversed_num = number.to_s.reverse
   num_length = reversed_num.length
   result = ""
   i = 0
   while i < num_length
       result = result + reversed_num[i..i+2] + ","
       i = i + 3
   end
   return result.reverse[1..(num_length + num_length/3)]
end

# 3. Reflection
=begin

**What was your process for breaking the problem down? What different approaches did you consider?**

I initially pseudocoded a couple different ideas. One of my ideas included creating a new array. I would convert the integer into a string and split each character. Then I would push those numbers into the new array. I would have also pushed a comma into some of the array indexes and then printed the entire array on the same line. 

Ultimately, I had to weigh the benefits and disadvantages of each, and determined that the current method was easier to implement. I was simply more familiar with the syntax and more certain that I could make the solution work. 

**Was your pseudocode effective in helping you build a successful initial solution?**

Absolutely. If I had not pseudocoded, I would not have thought of multiple approaches to the problem, and I would have wasted time with an alternative method. 

**What new Ruby method(s) did you use when refactoring your solution?**

None. I was able to solve this challenge with the methods I was already comfortable with. 

**Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?**

I was fortunate enough to be able to code this challenge with no additional research. 

**How did you initially iterate through the data structure?**

Using control flow.

**Do you feel your refactored solution is more readable than your initial solution? Why?**

My initial solution was only capable of passing the rspec tests. I was able to solve this quickly, by only using control flow. After recognizing that my solution was not scalable to all numbers, I refactored my solution. My final solution may not be as readable, but it is smaller and more of an elegant solution. It's the type of code that will get me hired. 

=end