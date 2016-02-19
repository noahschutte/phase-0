# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [.5] hours on this challenge.

### 0. Pseudocode ###

# Initialize
# Input: integer > 0, representing number of sides of a die
# Output: new Die object
# Steps: 
# 1. Create class
# 2. set instance variable for sides
# 3. control flow: raise error if less than 1

# Return sides
# Input: none
# Output: number of sides of the die object
# Steps
# 1. create function
# 2. use getter method for instance variable

# Roll die
# Input: none
# Output: random number between 1 and number of sides
# Steps
# 1. create function
# 2. return random variable set between 1 and the number of sides entered

### 1. Initial Solution ###

# class Die
#   def initialize(sides)
#   	@sides = sides
#   	if sides < 1
#   		raise ArgumentError.new("Number of sides must be at least 1")
#   	end
#   end

#   def sides
#   	@sides
#   end 	

#   def roll
#   	rand(1..@sides)
#   end
# end

### 3. Refactored Solution ###

class Die
	attr :sides

  def initialize(sides)
  	@sides = sides
  		raise ArgumentError.new("Number of sides must be at least 1") if sides < 1
  end

  def inspect
  	"#{@sides}-sided-die"
  end

  def roll
  	rand(1..@sides)
  end
end



### 4. Reflection ###
## What is an ArgumentError and why would you use one? ##

# An Argument Error helps us preemptively find and print any issues when we anticipate a problem. In this case, when someone enters 0 sides of a die, we know that this cannot happen in the real world. In order for this application to run and emulate a real die object, we must make restrictions around real world physics and notify the user that his entry is not valid. 

## What new Ruby methods did you implement? What challenges and successes did you have in implementing them? ##

# The creation of a class was all new. I was able to read "The Well-Grounded Rubyist" and watch numerous videos on the subject to identify best practices.

## What is a Ruby class? ##

# A class is a cast-mold that we're able to leverage when creating many objects with the same structure. Classes help us create objects quickly that follow rules that we set out for it's existence. 

## What is the difference between a local variable and an instance variable? ##

# An instance variable is the same thing as an object. A local variable is an object that can only be accessed in the scope for which it was defined. 

## Where can an instance variable be used? ##

# An instance variable can be accessed from any method or function inside the class method.