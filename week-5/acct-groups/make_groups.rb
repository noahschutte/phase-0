student_list = [
 'Adam Pinsky',
 'Afaan Naqvi',
 'Alana Farkas',
 'Andrew Crowley',
 'Andrew Vathanakamsang',
 'Anna Lansfjord',
 'Benjamin Heidebrink',
 'Blair White',
 'Brad Lindgren',
 'Brian Donahue',
 'Brittney Braxton',
 'Camila Crawford',
 'Charlie Lee',
 'Chunyu Ou',
 'Daniel Homer',
 'Daniel Shapiro',
 'David Kaiser',
 'David Ramirez',
 'Emily Osowski',
 'Emmet Garber',
 'Eric Gumerlock',
 'Gregory Toprak',
 'Hanna Taylor',
 'Dave Hostios',
 'Jack Baginski',
 'Jaclyn Feminella',
 'Jasmeet Chatrath',
 'Jason Allen',
 'Jon Norstrom',
 'jonathan nicolas',
 'Joseph Yoo',
 'Joshua Lugo',
 'Joshua Wu',
 'Julia Giraldi',
 'Kari Giberson',
 'Katherine Broner',
 'Kevin Fowle',
 'Kevin Niu',
 'Kevin Perkins',
 'Leo Kukhar',
 'Li-Lian Ku',
 'Erica Lloyd',
 'Marita Deery',
 'Michael Verthein',
 'Milorad Felbapov',
 'Brian Mosley',
 'Nick Russo',
 'Noah Schutte',
 'Oscar Delgadillo',
 'Ryan Dempsey',
 'Ryan Wilkins',
 'Sami Zhang',
 'Saralis Rivera',
 'Sean Norton',
 'Shyh Hwang',
 'Sydney Rossman-Reich',
 'Theo Paul',
 'Tomasz Sok',
 'Wesley El-Amin'
]

def make_groups(list_of_students)
	cloned_list = list_of_students.dup
	groups = []
  if cloned_list.length < 5
  	group_x = []
  	cloned_list.length.times do group_x.push(cloned_list.pop)
		end
    groups.push(group_x)
  # elsif cloned_list.length < 9
  # elsif cloned_list.length < 13
  # elsif cloned_list.length < 17
  else
	  while cloned_list.length >= 4 do
	      group_x = []
	      4.times do
	          group_x.push(cloned_list.pop)
	      end
	      groups.push(group_x)
	  end
	end
  for i in 0..cloned_list.length do
      groups[i].push(cloned_list.pop)
  end
  groups
end

def print_groups(grouping)
	grouping.each_with_index do |group,index|
		puts "Group #{index + 1}: #{group.join(",")}"
	end
end

puts "\nWe have an incoming class of students. \nWe need to create accountability groups of 3-5 members per group.\nWould you like to create those groups now?\nIf so, enter: \"create\"  Otherwise enter: \"exit\""

response = ""

while response != "exit" do
	response = gets.chomp
	puts
	case response
	when "create"
		make_groups(student_list)
		puts
		puts "Now do you want to print, count, or exit?"
	when "print"
		print_groups(make_groups(student_list))
		puts
		puts "Now what? count or exit?"
	when "count"
		puts student_list.length
		puts
		puts "Now what? exit?"
	else 
		break if response == "exit"
		puts "That is not a valid response."
		puts "Now what? Enter: create, print, count, or exit"
	end
end
