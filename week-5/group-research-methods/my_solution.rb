# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# Create a method my_array_finding_method that takes an Array and a letter as arguments and returns a new array of the words that contain that letter.

# Psuedocode
# Long Way
  # Break array into smaller strings
  # search substrings for single letter
  # if contains that letter then return that substring
  # repeat
# Short Way
  # Use select method
  # array.select {|item| item.include? thing_to_find}

  # GOT A REALLY ANNOYING FIXNUM ERROR. BASHED HEAD AGAINST WALL FOR 30 MINUTES WHEN ALL I HAD TO DO WAS .to_s GRRRRRRR


def my_array_finding_method(source, thing_to_find)
  # INITIAL SOLUTION
    # new_array = []
    # source.each do |item|
    #     new_array << item.to_s
    #   end
    # new_array.keep_if {|item| item.include? thing_to_find}
  #---------------------------------------------------------------
  #------------------------REFACTORED-----------------------------
  #---------------------------------------------------------------
  source.select {|item| item.to_s.include? thing_to_find}
end

# Create a method my_hash_finding_method that takes a Hash and number as arguments and returns a new array of pet names by age.
# Psuedocode
  #  looking to sort by values and return corresponding keys
  # probably use key(value) method
  # will need to iterate
# LONG WAY
  # make a new array
  # iterate through Hash
  # each hash value that matches thing to find, we push that key into the array
# SHORT WAY
  # short way could be
  # source.keys.has_value? thing_to_find

def my_hash_finding_method(source, thing_to_find)
  # INITIAL SOLUTION
    # new_array = []
    # source.each do |key, value|
    #   if value == thing_to_find
    #     new_array << key
    #   end
    # end
    # new_array
  #---------------------------------------------------------------
  #------------------------REFACTORED-----------------------------
  #---------------------------------------------------------------
  source.select{|key,value| value == thing_to_find}.keys

end

# Identify and describe the Ruby method(s) you implemented.
  # On the refactored methods I used .select, .include?, and .keys
  # .select allows you to select parts of the array or hash that have some parameter inside of the element. I utilize it here to single out the thing_to_find variable
  # the .include method allows me to tell the program to look and see if an individual element in an array has the character from thing_to_find
  # finally the .keys method allows me to return a temporary array of the keys that are left in a hash. because i use it after I have eliminated several possibilities from the initial hash, it allows me to just get the keys I want and return it
#-----------------------------------------------------

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |val|
    if val.is_a? Integer
      val += thing_to_modify
    else
      val
    end
  end
  source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key, val|
    source[key] = val + thing_to_modify
  end
  source
end
# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort {|x,y| x.to_s <=> y.to_s }
end

def my_hash_sorting_method(source)
  source.to_a.sort { |x,y| x[1] <=> y[1] }
end

# Identify and describe the Ruby method(s) you implemented.
=begin
- I implemented the array and hash sorting methods using an Enumerable method called
  sort. This allows you to sort an Enumerable using your own comparison given in the
  form of a code block. For the array, I sorted based on the string values. For the
  hash, I sorted based on the hash values.
- You can use this method by calling sort on an Enumerable and then passing in the
  block of code for the comparison method.
- One trick I use for deciphering the Ruby document is to figure out exactly what I
  want the command I'm looking for to do. This makes it easier for me to search for the appropriate command in the documentation.
=end



# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if{|x| x.to_s.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k, v| k == thing_to_delete }
end

# Identify and describe the Ruby method(s) you implemented.
#a.delete_if {|x| x >= "b" }   #=> ["a"]
# .delete_if => deletes every element of self which block evaluates to true.
# .to_s => this converts an object to a string
# .include? => this checks each object and returns true if the parameters given
# Teach your accountability group how to use the methods:
# You want to use the delete_if methods when you are checking for
# selective entries in an if statement. delete_if is like an if statement that will check for a key and value to delete.


def my_array_splitting_method(source)
  # first create an output array, with 2 more arrays in it - one for integers and one for other
  output = [[],[]]
  # then I'll iterate through the input array
  source.each do |x|
    if x.is_a?(Integer)   # when I find an integer, put it inside the numbers array
      output[0] << x
    else  # when i find something else, put it inside the other array
      output[1] << x
    end
  end
  return output # and then return the output array
end

def my_hash_splitting_method(source, age)
  # like before, I'll first make an output array with 2 arrays inside of it - one for pets age 4 and below, and the next for older pets
  output = [[],[]]
  # and then iterate through the input hash
  source.each do |key, value|
    if value <= 4 # when i find a pet age 4 or below, put it in the first array
      output[0] << [key, value]
    else   # when i find something else, put it in the second array
      output[1] << [key, value]
    end
  end
  return output  # and then return the output
end

# Identify and describe the Ruby method(s) you implemented.
# .each was very important. It lets me iterate through each item inside the input array/input hash, and check which part of my output array it belongs in
# .is_a?(Class) also was important for the array part, cus it's how I checked if the item was in the Class Integer, or else in a different Class
# for checking the hashes, I didnt need .is_a? because of the .each do |key, value| lets me check the value (which is the pet's age, in this case) really easily.



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#