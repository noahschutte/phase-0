# Factorial

# I worked on this challenge [Adam Pinsky].


# Your Solution Below
def factorial(number)
  if number == 0
  	return 1
  end
  base = number
  answer = 1
  while base > 1
  	answer = answer * base
  	base = base -1
  end
  return answer
end