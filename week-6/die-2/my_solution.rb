# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself].

# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of at least one object that the die could return.
# Outputs: [new die object, number of sides, random selection] 
# Steps:
# 1. Set instance variable
# 2. raise argument error if the input array is empty
# 3. return a count of the objects in the array
# 4. return a randomly selected object in the array

# Initial Solution

# class Die

#   def initialize(labels)
#   	@labels = labels
#   	if @labels == []
#   		raise ArgumentError.new("Die must be passed an array with at least one object.")
#   	end
#   end

#   def inspect
#   	"irregular-die displays: #{@labels}"
#   end

#   def sides
#   	@labels.count
#   end

#   def roll
#   	@labels[rand(0...@labels.length)]
#   end
# end

# Refactored Solution

class Die
  attr_reader :sides

def initialize(labels)
  @labels = labels
  @sides = labels.count
    raise ArgumentError.new("Die must be passed an array with at least one object.") if @labels.empty?
  end

  def inspect
    "irregular-die displays: #{@labels}"
  end

  def roll
    @labels.sample
  end
end

# Reflection
=begin
**What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?**

I did not have to change much logic from the last die. The last die included integers only. This die can contain both integers and strings. The only differences were to make a separate instance variable for the number of sides from the array itself. 

**What does this exercise teach you about making code that is easily changeable or modifiable?**

Classes allow you to create a cast-mold to quickly create objects that conform to simple changes. 

**What new methods did you learn when working on this challenge, if any?**

Array method "sample", "empty?", and ".count".

**What concepts about classes were you able to solidify in this challenge?**

The use of symbols and instance variables. 

=end

