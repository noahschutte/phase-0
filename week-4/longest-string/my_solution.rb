# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	if list_of_words.length == 0
		return nil
	end
	i = list_of_words[0]
	j = 1
	while j <= list_of_words.length - 1 do
		if i.length < list_of_words[j].length
			i = list_of_words[j]
		end
		j = j + 1
	end
	return i
end
