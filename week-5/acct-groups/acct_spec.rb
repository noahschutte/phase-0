require_relative "make_groups"

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
	'Noah',
 'Theo Paul',
 'Tomasz Sok',
 'Wesley El-Amin']

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
