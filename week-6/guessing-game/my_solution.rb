#### Build a simple guessing game ####

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

### Pseudocode ###

# Input: 
	# answer: The correct solution to the game
	# guess: A player's guess of the answer
# Output: 
	# guess: a clue to obtain the answer
	# solved?: is the game over?
# Steps:
	# initialize game with the game solution
	# set control flow for guess hints
	# return hints to the player
	# determine if last guess solves game
	# answer if game is over

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#   	@answer = answer
#   end

#   def guess(guess)
#   	@guess = guess
#   	if @guess < @answer
#   		@guess = :low
#   	elsif @guess > @answer
#   		@guess = :high
#   	else @guess = :correct
#   	end
#   end

#   def solved?
#   	if @guess == :correct
#   		return true
#   	else return false
#   	end
#   end
# end

### Refactored Solution ###

class GuessingGame
  def initialize(answer)
  #start game by setting the answer
  	@answer = answer
  end

  def guess(guess)
  #player guesses the game's answer
  	@guess = guess
  	if @guess < @answer; @guess = :low
  	#tell the player their guess is low
  	elsif @guess > @answer; @guess = :high
  	#tell the player their guess is high
  	else @guess = :correct
  	#tell the player their guess is correct
  	end
  end

  def solved?
  #player asks if the game is over
  	return true if @guess == :correct
  	#tell the player they've won
		return false if @guess != :correct
		#tell the player they have not guessed the right answer yet
  end
end

### Reflection ###

## How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object? ##

# They are told how to interact with other objects and the requests of other users. # 

## When should you use instance variables? What do they do for you? ##

# Instance variables are very helpful in a class, as they can be used in any of the methods or functions of a class. You do not have to worry about whether the local variable can be called. #

## Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with? ##

# I struggled with control flow in this challenge when I attempted to refactor. I identified an issue when I put the if statement after a code block, when attempting to shorten the length of my overall code. I noticed that if I changed the value of an instance variable, each other control flow must still execute. Since I changed the value of the variable from a number to a symbol, an error occurred when attempting to compare a symbol to another integer. Therefore, I could not refactor the control flow as I had anticipated. #

## Why do you think this code requires you to return symbols? What are the benefits of using symbols? ##

# Symbols are returned much faster to a program, because they are stored more locally. Without symbols, the program would custom-make each variable each time they're called. In a guessing game, it's useful to refer to the answers needed quickly without recreating the same variables over and over for the system. #