# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode
#make a class
#define a dice with 6 sides
#randomize the order
#if the number is less than one that should return a error

# Input: the sides are the input
# Output: the roll is the output of the sides
# Steps:


# 1. Initial Solution



class Die

  def initialize(sides)
@sides = sides
    if sides < 1
      raise ArgumentError.new("Roll is less than 1")

    end

  end

  def sides
   @sides
  end

  def roll
    1 + rand(sides)
  end
end



# 3. Refactored Solution

#Im not sure how much I can refactroing I can do on this one!





# 4. Reflection

#What is an ArgumentError and why would you use one?
#An ArgumentError can be used to raise an error for a certain method.

#What new Ruby methods did you implement?
#I used the rand and raise.

#What challenges and successes did you have in implementing them?
#Im still not sure how raise works, I know why but I am still kinda confused. Rand was self explaintory.

#What is a Ruby class?
#Classes in Ruby are first-class objects.

#Why would you use a Ruby class?
#You can assign certain traits to a class, and use those traits to control all those objects.

#What is the difference between a local variable and an instance variable?
#instance variable = only accessable within the method and then each object with its own copy depicted by @
#local variable = there is only one copy of it within the class depicted by @@

#Where can an instance variable be used?
#across methods or any intance or objects.