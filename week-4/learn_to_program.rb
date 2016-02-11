puts "Hello, user. What is your first name?"
f_name = gets.chomp
puts "Thanks, " + f_name + ". What is your middle name?"
m_name = gets.chomp
puts f_name + " " + m_name + ". Has a nice ring to it. What's your last name?"
l_name = gets.chomp
puts f_name.upcase + " " + m_name.upcase + " " + l_name.upcase + "! That's probably what your mom yelled when you were in trouble." 

puts "What is your favorite number?"
number = gets.chomp
number2 = (number.to_i + 1).to_s
puts "Well, I think " + number2 + " is a far superior number."