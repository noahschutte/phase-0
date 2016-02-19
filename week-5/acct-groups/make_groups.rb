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

short_list = [
'Sydney Rossman-Reich',
'Tomasz Sok',
'Wesley El-Amin']

def make_groups(list_of_students)
  cloned_list = list_of_students.dup
  groups = []
  group_x = []
  pass = true
  if cloned_list.length < 3
    p "Not enough students to create accountability groups."
    pass = false
  elsif cloned_list.length < 6
    while cloned_list.length > 0 do
      group_x << cloned_list.pop
    end
    groups.push(group_x)
  elsif cloned_list.length == 6
    while cloned_list.length > 2 do
      group_x = []  
      3.times do
            group_x.push(cloned_list.pop)
        end
        groups.push(group_x)
    end
  elsif cloned_list.length == 11
    while cloned_list.length > 3 do
      group_x = []
      3.times do
        group_x.push(cloned_list.pop)
      end
      groups.push(group_x)
    end
  else
    while cloned_list.length > 3 do
      group_x = []  
      4.times do
        group_x.push(cloned_list.pop)
      end
      groups.push(group_x)
    end
  end
   if pass == true && cloned_list.length > 0
     for i in 0...cloned_list.length do
       groups[i].push(cloned_list.pop)
     end
   end
  groups if pass == true
end

def print_groups(grouping)
	grouping.each_with_index do |group,index|
		puts "Group #{index + 1}: #{group.join(",")}"
	end
end

puts "\nWe have an incoming class of students. \nWe need to create accountability groups of 3-5 members per group.\nWould you like to count the students or create those groups now?\nIf so, enter: \"count\" or \"create\" Otherwise enter: \"exit\""

response = ""

while response != "exit" do
	response = gets.chomp
	puts
	case response
	when "create"
		print_groups(make_groups(student_list))
		puts
		puts "Now what? count or exit?"
	when "count"
		puts student_list.length
		puts
		puts "Now what? create or exit?"
	else 
		break if response == "exit"
		puts "That is not a valid response."
		puts "Now what? Enter: create, count, or exit"
	end
end

describe 'make_groups' do
	it "returns an array" do
		expect(make_groups(student_list)).to be_a(Array)
	end

	it "return an array with at least one item" do
		expect(make_groups(student_list).count > 0).to eq(true)
	end
	
	context "short_list" do
		it "returns an array of 4 items" do
			expect(make_groups(short_list).count == 1).to eq(true)
		end

		it "returns an array of 4 arrays, each array has between 3-5 items" do
			expect(make_groups(short_list).map { |g| g.count.between?(3,5) }).to eq([ true, true, true, true])
		end 
	end
end

## Reflection ##

## What was the most interesting and most difficult part of this challenge? ##

# Learning rspec to implement a TDD strategy. 

## Do you feel you are improving in your ability to write pseudocode and break the problem down? ##

# Yes, but still needs strengthening.

## Was your approach for automating this task a good solution? What could have made it even better? ##

# After running my code, I realized that my solution was only partially solving the problem. I was running into numerous problems if my student list was less than 16. My solution was to add more control flow contingencies, which considerably lengthened my code block. This solution could take a lot of refactoring for a final draft.

## What data structure did you decide to store the accountability groups in and why? ##

# Arrays of arrays. This structure could be quickly assembled. A hash could be useful, but no key is really necessary to refer to the groups. Arrays inherently have an index number to refer to each accountability group.

## What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? ##

# I spent the least amount of time on refactoring. I spent considerable time on learning rspec, testing all contingencies and learning about new methods, including case. 