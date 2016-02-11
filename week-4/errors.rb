=begin
 Analyze the Errors

 I worked on this challenge [by myself].
 I spent [1.5] hours on this challenge.

 --- error -------------------------------------------------------
=end

cartman_yells = "Screw you guys " + "I'm going home."

=begin
 This error was analyzed in the README file.
 --- error -------------------------------------------------------
=end

def cartman_hates(thing)
	hate = true
  while hate
    puts "What's there to hate about #{thing}?"
    hate = false
  end
end

=begin
 This is a tricky error. The line number may throw you off.

 1. What is the name of the file with the error?
errors.rb

 2. What is the line number where the error occurs?
170

 3. What is the type of error message?
end of input

 4. What additional information does the interpreter provide about this type of error?
expects end of statement

 5. Where is the error in the code?
line 23 is missing and end to a method

 --- error -------------------------------------------------------
=end

south_park = "city"

=begin
 1. What is the line number where the error occurs?
46
 2. What is the type of error message?
undefined method or variable

 4. Where is the error in the code?
46

 5. Why did the interpreter give you this error?
south_park was called, but was not locally assigned any value

 --- error -------------------------------------------------------
=end

cartman_hates("kitties")

=begin
 1. What is the line number where the error occurs?
63
 2. What is the type of error message?
not enough arguments
 3. What additional information does the interpreter provide about this type of error?
(0 of 1) arguments
 4. Where is the error in the code?
63
 5. Why did the interpreter give you this error?
No argument was provided

 --- error -------------------------------------------------------
=end

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

=begin
 1. What is the line number where the error occurs?
84
 2. What is the type of error message?
too many arguments
 3. What additional information does the interpreter provide about this type of error?
(1 of 0) arguments
 4. Where is the error in the code?
80
 5. Why did the interpreter give you this error?
too many arguments

 --- error -------------------------------------------------------
=end

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Shut up!")

=begin
 1. What is the line number where the error occurs?
101
 2. What is the type of error message?
not enough arguments
 3. What additional information does the interpreter provide about this type of error?
(0 of 1) arguments
 4. Where is the error in the code?
105
 5. Why did the interpreter give you this error?
No argument when calling the method

 --- error -------------------------------------------------------
=end

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Kyle')

p "Respect my authoritay!" * 5

=begin
 1. What is the line number where the error occurs?
126
 2. What is the type of error message?
not enough arguments
 3. What additional information does the interpreter provide about this type of error?
(1 of 2) arguments
 4. Where is the error in the code?
126
 5. Why did the interpreter give you this error?
Missing the second argument

 --- error -------------------------------------------------------
=end

amount_of_kfc_left = 20/4

=begin
 1. What is the line number where the error occurs?
145
 2. What is the type of error message?
Divisor of 0
 3. What additional information does the interpreter provide about this type of error?
Divisor 0
 4. Where is the error in the code?
145
 5. Why did the interpreter give you this error?
Mathematically, you cannot divide by 0.

 --- error -------------------------------------------------------
=end

require_relative "cartmans_essay"

=begin
 1. What is the line number where the error occurs?
162
 2. What is the type of error message?
no file exists
 3. What additional information does the interpreter provide about this type of error?
cannot open file
 4. Where is the error in the code?
missing a related file location
 5. Why did the interpreter give you this error?
needs to refer to a relative file


 --- REFLECTION -------------------------------------------------------
 Write your reflection below as a comment.

**Which error was the most difficult to read?**
A missing required_relative file. Not only did I have to create a file, but that file must be a ruby file that existed in the same directory path.

**How did you figure out what the issue with the error was?**

The issue was more or less common sense, but the solution was not exactly clear.

**Were you able to determine why each error message happened based on the code?** 

Yes.

**When you encounter errors in your future code, what process will you follow to help you debug?**

I hope that I am familiar with most of the errors. Otherwise, I can google for any additional code messages that appear.

=end