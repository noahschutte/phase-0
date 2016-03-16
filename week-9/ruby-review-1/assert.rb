# U2.W6: Testing Assert Statements

# 1. Review the simple assert statement

require_relative "ruby-review"

def assert_equals actual, expected, message
	puts "*" * 50
	puts message
	puts "*" * 50
	puts actual == expected
end

name = "work"
todo = reverse_words()

assert_equals todo "if reverse_words includes str, return true"



# def assert
#   raise "Assertion failed!" unless yield
# end

# input = "bird"
# assert { input == "bird" }

# 2. Pseudocode what happens when the code above runs

p "if reverse_words includes a string, return true"
p reverse_words("explosion") == true

# 3. Copy your selected challenge here




# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection