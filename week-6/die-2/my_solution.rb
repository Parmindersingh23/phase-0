# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode
#This time we will be taking in array as strings
#The Die will roll and return a random string
#If the array is empty then there should be an error displayed

# Input:Array of strings
# Output:Random string will be output
# Steps:


# Initial Solution

class Die
def initialize(labels)
@labels = labels
  if labels.length == 0
    raise ArgumentError.new("String is empty!!")
  end
end
def sides
    return @labels.length
  end
def roll
   @labels.sample
  end
end

# Refactored Solution





# Reflection
#What were the main differences between this die class and the last one you created in terms of implementation?
#The main difference is adding a .length and setting it to 0
#Did you need to change much logic to get this to work?
#Not much logic needed to be changed.
#What does this exercise teach you about making code that is easily changeable or modifiable?
#It makes sense to just use the code that is available but adding new logic can be difficult and cause new problems to arise.
#What new methods did you learn when working on this challenge, if any?
#I used the .sample for the roll method to randmonize the @labels.
#What concepts about classes were you able to solidify in this challenge?
#Class is making more sense to me now.