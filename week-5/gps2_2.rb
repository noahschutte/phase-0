# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 # 1. Split the string into different elements into Hash
 # 2. Set default quantity = 1
 # 3. Print the list to the console
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 1. prompt an item name,
#        2. prompt a quantity
#        3. save it to the hash
# output: You have added xx to your grocery list.

# Method to remove an item from the list
# input: item name
# steps: 1. prompt an item name
#        2. delete from the hash, including the value
# output: You have successfully deleted xx.

# Method to update the quantity of an item
# input: item name, new quantity
# steps: 1. prompt the item name
#        2. rewrite the value
# output: You have successfully updated the quantity of xx.

# Method to print a list and make it look pretty
# input: print command
# steps: 1. Print the current hash in a nice display
# output: The Hash

def new_list (string, value=1)
 keys = string.split(' ')
 grocery_list = Hash.new(1)
 keys.each do |k|
   grocery_list[k] = value
   puts "#{k}: #{grocery_list[k]}"
 end
return grocery_list
end

grocery_list = new_list("juice carrots kale oranges")

puts "What would you like to do? add remove update or print"
answer = gets.chomp


def add(grocery_list)
 puts "What is the item you would like to add?"
 item = gets.chomp
 puts "How many would you like to buy?"
 value = gets.chomp
 grocery_list[item] = value
 puts "You have successfully added #{value} #{item}."
 return grocery_list
end

def remove(grocery_list)
 puts "What would you like to remove?"
 item = gets.chomp
 if grocery_list[item] = nil
   puts "Item doesn't exist!"
 else
   grocery_list.delete(item)
   puts "You have successfully removed #{item}"
 end

end

def update(grocery_list)
 puts "Which item would you like to update?"
 item = gets.chomp
 if grocery_list[item] = nil
   puts "Item doesn't exist!"
 else
   puts "What should the new quantity be?"
   value = gets.chomp
   grocery_list[item] = value
   puts "You have successfully updated #{item} quantity to #{value}"
 end
end

def print(grocery_list)
 puts "Here is your grocery list:"
 grocery_list.each do |item, value|
   puts "#{item}: qty #{value}"
 end
end

case answer
when "add"
 add(grocery_list)
when "remove"
 remove(grocery_list)
when "update"
 update(grocery_list)
when "print"
 print(grocery_list)
else
 puts "Sorry, that is not a valid command!!"
end

=begin
**Reflection**
**What did you learn about pseudocode from working on this challenge?**

Use pseudocode. It is extremely helpful. It allows both partners to agree and understand the entire set of work that you plan to complete and how you plan to accomplish it. It also helps breakdown seemingly difficult tasks into more simple problems that are easily able to be completed. 

**What are the tradeoffs of using Arrays and Hashes for this challenge?**

I still find the syntax for arrays to be easier to use. It's simple to add and cal any element into/from an array. But there are serious limitations to using an array. Hashes are able to store values with each key, but create a more dynamic set of information that takes more knowledge of syntax. Hopefully I'll be more comfortable with those characters soon. 

**What does a method return?**

A method does not return anything unless specified. 

**What kind of things can you pass into methods as arguments?**

Anything. Arrays, hashes, variables, integers, floats, strings, booleans, and other stuff. 

**How can you pass information between methods?**

Use a call to another method. 

**What concepts were solidified in this challenge, and what concepts are still confusing?**

The use of a case for logic flow. And passing strings to a hash. 

=end