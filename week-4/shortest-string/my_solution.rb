# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	if list_of_words.length == 0
		return nil
	end
	i = list_of_words[0]
	j = 1
	while j <= list_of_words.length - 1 do
		if i.length > list_of_words[j].length
			i = list_of_words[j]
		end
		j = j + 1
	end
	return i
end
