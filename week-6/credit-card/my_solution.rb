# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: David Kaiser].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: credit card number
# Output: true or false (respond to #check_card)
# Steps:
# 1. Convert 
# 2. 
# 3. 
# 4. 
# 5. 

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  attr_reader :card_number

  def initialize(number)
    @card_number = number.to_s.split(//)
    unless card_number.length == 16
      raise ArgumentError.new ("Card number must be 16 digits")
    end
    p card_number
  end

  def check_card
    #double every other number
    p numbers_to_double =  card_number.values_at(* card_number.each_index.select {|index| index.even?})
    p numbers_to_double.map! {|i| (i.to_i * 2).to_s}
    p numbers_stay_same = card_number.values_at(* card_number.each_index.select {|index| index.odd?})
    all_digits = numbers_to_double.concat(numbers_stay_same)
    all_digits.map! do |index|
      if index.length == 2
        index.split(//)
      else  
         index
      end
    end
    all_digits.flatten!
    
    sum = 0
    for x in all_digits
      sum += x.to_i
    end  
    
    p sum
    
    if sum % 10 == 0
      p true
      else p false
    end
    
    #iterate over concatted array
    #if element ==2
#       split element
#       convert to integers
#     add split integers
#     convert back to string
    
    
  end
  
      #p numbers_to_double
    
    #doubles numbers in the array
    #iterate to seperate 2 digit numbers
    
    #take the above array, run the double and split method on it
    
    # p numbers_stay_same = card_number.values_at(* card_number.each_index.select {|index| index.odd?})
    
    #combine the two arrays, convert to integers, summ
    
    
    #p card_number
    
    #array.map { |i| i*2 }      
    
    #split numbers if value >10
    #collect all numbers
    #sum
    #check modulo 10
  # def double_numbers
  #   card_number.values_at(* card_number.each_index.select {|index| index.even?}) do |odds|
  #     odds.map { |i| i*2 } 
  # end  

end

# DRIVER CODE

# new_card = CreditCard.new(2445678901234569)
# new_card.check_card

# Refactored Solution








# Reflection