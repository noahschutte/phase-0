# Leap Years

# I worked on this challenge [with: Jason Allen ].


# Your Solution Below

def leap_year?(year)
	if year % 400 == 0
		return true
	elsif year % 100 == 0 
		return false
	elsif year % 4 == 0
		return true
	else false
	end
end