#### A Nested Array to Model a Bingo Board SOLO CHALLENGE ####

# I spent [#] hours on this challenge.

### Release 0: Pseudocode ###
# Outline: Driver code should include methods calls to: Initialize a new game, Display the board, Call a new letter-number combination, and Mark your board. 

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Method call: Call
  # Assign letter to a random letter in BINGO
  # Assign number to a random number 1 through 100
  # print the letter-number combination

# Check the called column for the number called.
  # Search each array
  # Check the array index that corresponds to the letter
  # 

# If the number is in the column, replace with an 'x'
  # Search each array
  # If call is equal to value in corresponding index, replace value with X

# Display a column to the console
  # Print each array index position

# Display the board to the console (prettily)
  # print each array to the console separately

### Initial Solution ###

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board.dup
#   end

#   def display
#     puts "------ Board ------" 
#     @bingo_board.each do |row|
#       puts row.inspect
#     end
#     puts
#   end

#   def call
#     @letter = [:B,:I,:N,:G,:O].sample
#     @number = rand(1..100)
#     puts "Next ball is #{@letter}#{@number}."
#     puts
#   end

#   def set_equal
#     @set_equal = {B: 0,I: 1,N: 2,G: 3,O: 4}
#   end

#   def mark
#     @bingo_board.each do |row|
#       if row[set_equal[@letter]] == @number
#         row[set_equal[@letter]] = 'X'
#         puts "You've marked #{@letter}#{@number} on your board."
#         puts
#       end
#     end
#   end

# end

### Refactored Solution ###

class BingoBoard
  attr_reader :bingo_header, :letter, :number, :bingo_board

  def initialize(board)
    @bingo_board = board
    @bingo_header = ["B","I","N","G","O"]
  end

  # def bingo_header
  #   @bingo_header
  # end

  def display
    puts "--- Board ---\n#{bingo_header.join("  ")}"
    bingo_board.each do |row|
      puts row.join(" ")
    end
    puts
  end

  def call
    @letter = bingo_header.sample
    @number = rand(1..100)
    puts "Next ball is #{letter}#{number}.\n"
  end

  def column_index
    bingo_header.index(letter)
  end

  def mark
    bingo_board.each do |row|
      if row[column_index] == number
        row[column_index] = ' X'
        puts "You've marked #{letter}#{number} on your board.\n"
      end
    end
  end

end

### DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE ###
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

# new_game = BingoBoard.new(board)

# new_game.display

# new_game.call 

# new_game.mark

# new_game.display

puts "Welcome to online BINGO! \nAre you ready to play?\nIf so, enter: \"new game\" Otherwise enter: \"exit\""

response = ""

while response != "exit" do
  response = gets.chomp
  puts
  case response
  when "new game"
    new_game = BingoBoard.new(board)
    new_game.display
    puts "Would you like to start the game? Enter: call or exit."
  when "display"
    new_game.display
    puts
    puts "Now what? call or exit?"
  when "call" 
    new_game.call
    new_game.mark
    new_game.display
    puts
    puts "Now what? display, mark, call or exit?"
  when "mark"
    new_game.mark
    puts
    puts "Now what? display, call, or exit?"
  else 
    break if response == "exit"
    puts "That is not a valid response."
    puts "Now what? Enter: new game, display, call, mark, or exit"
  end
end

### Reflection ###

## How difficult was pseudocoding this challenge? What do you think of your pseudocoding style? ## 

# Pseudocoding helped me immensely. Seemingly any task can look overwhelming before you break it down into it's component parts. After identifying each issue I would need to tackle, the individuals tasks seemed very reasonable.  

## What are the benefits of using a class for this challenge? ##

# Instance variables make it simple to read stored data across multiple functions. It is also simple to start new games as objects. 

## How can you access coordinates in a nested array? ##

# By referencing the index you are interested in accessing. 

## What methods did you use to access and modify the array? ##

# Attribute reader, each, join, sample, random, and index. 

## Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called? ##

# Index returns the index position a value is being stored in an array.

## How did you determine what should be an instance variable versus a local variable? ##

# By default I made everything an instance variable. If I determined that the variable did not need to be called outside of the method, I could make it a local variable. 

## What do you feel is most improved in your refactored solution? ##

# Finding the index reference by using the array method, "index", instead of using a placeholder hash.  