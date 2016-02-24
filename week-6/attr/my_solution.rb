##### Attr Methods #####

# I worked on this challenge [by myself]
# I spent [1] hours on this challenge.

#### Pseudocode ####

# Input: Create a new object in the Greetings class. 
# Output: Text string.
# Steps:
	# Assign name to symbol in NameData class
	# add attr_reader for name symbol
	# initialize NameData object from Greetings class
	# assign new instance variable inside Greetings class
	# return greetings from 'hello' method, call for instance variable interpolated in text

class NameData
	attr_reader :first_name

	def initialize
		@first_name = "Noah"
	end
end

class Greetings
	def initialize
		@student = NameData.new
	end

	def hello
		puts "Hello #{@student.first_name}! How wonderful to see you today."
	end
end

#### Reflection ####

### Release 1 ###

## What are these methods doing? ##

# Each method is either reading the instance variables that have been set for the object or writing over those variables with new values. 

## How are they modifying or returning the value of instance variables? ##

# By executing an independent method that will call to each of the instance variables.

### Release 3 ###

## What changed between the last release and this release? ##

# An attribute reader was added near the top of the Profile class.

## What was replaced? ##

# The method that was independently called to return the age of the object.

## Is this code simpler than the last? ##

# Yes. It condenses the code and is easy to understand. 

### Challenge Reflection ###

## What is a reader method? ##

# A reader method is a quick way to access and read one attribute of an object, in this examples case it is an individual's age.

## What is a writer method? ##
 
# A writer method is a quick way to access and write over one attribute of an object, in this examples case it is an individual's age.

## What do the attr methods do for you? ##

# They make code more dense and readable. They eliminate the need for independent method calls for reading and replacing object attributes. 

## Should you always use an accessor to cover your bases? Why or why not? ##

# No. If you only need to read the information, you are adding a risk of the data being replaced if you include writing simply for the novelty. 

## What is confusing to you about these methods? ##

# Not much. Fairly straight-forward. 