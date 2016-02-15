# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [Adam Polinsky].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array_1
# Output: Sum of Array_1
# Steps to solve the problem.


# 1. total initial solution
=begin
def total(array_1)
	answer = 0
	index = 0
	while index < array_1.length
		answer = answer + array_1[index]
		index += 1
	end
	return answer
end
=end
# 3. total refactored solution

def total(array_1)
	sum = 0
	array_1.each do |i|
		sum = sum + i
	end
	return sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a sentence
# Steps to solve the problem.
# 5. sentence_maker initial solution
=begin
def sentence_maker(array_2)
	sentence = array_2[0]
	index = 1
	while index < array_2.length
		sentence = sentence + " " + array_2[index].to_s
		index += 1
	end
	return sentence.capitalize + "."
end
=end
# 6. sentence_maker refactored solution

def sentence_maker(array_2)
	return array_2.join(" ").capitalize + "."
end


