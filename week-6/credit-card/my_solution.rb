#### Class Warfare, Validate a Credit Card Number ####

# I worked on this challenge [with: David Kaiser].
# I spent [2] hours on this challenge.

### Pseudocode ###

# Input: credit card number
# Output: true or false (respond to #check_card)
# Steps:
# 1. Convert input to string and split by each character
# 2. Add error if array of numbers is not equal to 16
# 3. pull even indexes into one array and odd indexes into another array
# 4. multiply the digits in the odd array by 2
# 5. if length of any array index is 2, split by characters into the array
# 6. sum all digits
# 7. divide sum by 10
# 8. If remainder is equal to 0, the credit card number is valid

### Initial Solution ###

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  attr_reader :card_number

  def initialize(number)
    @card_number = number.to_s.split(//)
    unless card_number.length == 16
      raise ArgumentError.new ("Card number must be 16 digits")
    end
    card_number
  end

  def check_card
    #double every other number
    numbers_to_double =  card_number.values_at(* card_number.each_index.select {|index| index.even?})
    numbers_to_double.map! {|i| (i.to_i * 2).to_s}
    numbers_stay_same = card_number.values_at(* card_number.each_index.select {|index| index.odd?})
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
    
    sum
    
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
    #iterate to separate 2 digit numbers
    
    #take the above array, run the double and split method on it
    
    # p numbers_stay_same = card_number.values_at(* card_number.each_index.select {|index| index.odd?})
    
    #combine the two arrays, convert to integers, summ
    # 
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

### Refactored Solution ###

class CreditCard
  attr_reader :card_number, :all_digits

  def initialize(number)
    @card_number = number.to_s.split(//)
    @all_digits = []
    raise ArgumentError.new ("Card number must be 16 digits") unless card_number.length == 16
  end

  def double_odd_integers
    even_numbers = card_number.values_at(* card_number.each_index.select {|index| index.odd?})
    odd_numbers = card_number.values_at(* card_number.each_index.select {|index| index.even?})
    odd_numbers.map! {|i| (i.to_i * 2).to_s}
    @all_digits = odd_numbers.concat(even_numbers)
  end

  def split_2_digit_integers
    all_digits.map! do |index|
      if index.length == 2
        index.split(//)
      else  
         index
      end
    end 
  end

  def sum_numbers
    sum = 0
    all_digits.flatten.each do |number|
      sum += number.to_i
    end
    sum
  end

  def valid?
    sum_numbers % 10 == 0
  end

  def check_card
    double_odd_integers
    split_2_digit_integers
    valid?
  end

end

### DRIVER CODE ###

new_card = CreditCard.new(4121383113522276)
p new_card.check_card

### Reflection ###

## What was the most difficult part of this challenge for you and your pair?

# I thoroughly enjoyed this challenge. I though the most difficult, but also satisfying part of the challenge was refactoring the initial solution. 

## What new methods did you find to help you when you refactored?

# Refactoring was primarily making the code more readable. I also implemented reader attributes and made separate method calls within the class.

## What concepts or learnings were you able to solidify in this challenge?

# I am feeling much stronger with using classes. 