# Reverse Words
# I worked on this challenge [by myself].
# This challenge took me [.5] hours.

# Pseudocode
# 1. Split string into array of word
# 2. Reverse each word 
# 3. Return joined array

# Initial Solution

# def reverse_words(input)
# 	input_array = input.split(" ")
# 	input_array.each do |word|
# 		word.reverse!
# 	end
# 	p input_array.join(" ")
# end

# Refactored Solution

def reverse_words(input)
	input_array = input.split(" ")
	input_array.each {|word| word.reverse!}
	p input_array.join(" ")
end

# DRIVER CODE #
reverse_words("")
reverse_words("bird")
reverse_words("dead horse")
reverse_words("This is a sentence.")

# Reflection

# What concepts did you review in this challenge?

# destructive enumerable methods

# What is still confusing to you about Ruby?

# What is considered a best practice for writing elegant code. Length vs ease of understanding. Some things that can only be learned through experience in the industry. 

# What are you going to study to get more prepared for Phase 1?

# Practice more unique types of solutions. 