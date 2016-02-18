# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select {|word| word.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
source.select {|k,v| v==thing_to_find}.values
end

# Identify and describe the Ruby method(s) you implemented.
# .select
## Returns an array containing all elements of an enumerator for which the given block returns a true value.
# .to_s
## Returns a string representation of what is called. 
# .inlude?()
## Checks whether a particular item is included in the array.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map!  do |e|
    if e.class == Fixnum
      e = e + thing_to_modify
    elsif e.class == String
      e = e
    end
  end
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.keys.each do |k|
    source[k] += thing_to_modify
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# .map! ---> changes array in place (destructively)
# .keys.each ---> enumerates through the keys in the hash

# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

=begin 

**Identify and describe the Ruby method you implemented**

** .select **
 Returns an array containing all elements of an enumerator for which the given block returns a true value.
** .to_s **
 Returns a string representation of what is called. 
** .inlude?() **
 Checks whether a particular item is included in the array.
** .keys **
 Creates a new array with keys from hash.

**Teach your accountability group how to use the methods**

Each of these methods felt fairly straight-forward. "Select" will search all of the elements of the input and return an array including any of the elements that successfully match. The first method searches the array for words that contain a single letter. The "include" method asks each element whether a string or integer is a part or portion of that element. 

The only other useful method in my code block is ".keys". Keys allowed me to limit the key, value pair to just display the keys in an array.

**Share any tricks you used to find and decipher the Ruby Docs**

Almost comically, I guessed what methods existed in Ruby. If I was interested in only returning the keys from a hash, I searched for ".keys" and fortunately this method existed. If I was not fortunate enough to guess the correct method term, I google searched the task I was hoping to achieve. Stack Overflow would often have a recommended code block. I would then find the methods used in Ruby Docs and further research the inputs, outputs and syntax of the method. 

=end