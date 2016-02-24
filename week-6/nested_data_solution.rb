#### RELEASE 2: NESTED STRUCTURE GOLF ####
## Hole 1 ##
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

## Hole 2 ##
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


## Hole 3 ##
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

## RELEASE 3: ITERATE OVER NESTED STRUCTURES ##

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! do |sub_element|
     sub_element + 5
   end
   else
    element += 5
  end
end

p number_array

## Bonus: ##

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! do |sub_element|
     if sub_element.kind_of?(Array)
     	sub_element.map! do |sub_sub_element|
     		sub_sub_element + "ly"
     	end
     else
     	sub_element + "ly"
     end
   end
   else
    element + "ly"
  end
end

p startup_names

### Reflection ###

## What are some general rules you can apply to nested arrays? ##

# Use the hash or array name to call for contents inside that data structure. Use square brackets for both array and hash contents. Symbols must be called with a colon before the call name. Keep track of the number of levels deep an object is sitting in a data structure. 

## What are some ways you can iterate over nested arrays? ##

# Using map! will allow you to make a destructive copy of the original object, and iterate through the contents of the object. 
 
## Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option? ##

# .kind_of? allowed me to use control flow. If the data structure was nested, I was able to nest an additional iteration. 