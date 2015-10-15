=begin

# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with:Lars Johnson ].
# I spent [4] hours on this challenge.

# Pseudocode

# Input: It will be an integer
# Output: Returns a true or false statement

# Create a class called CreditCard
Initialize class with the CreditCard number that we recieve
Convert @number to array
Raise ArgumentError if CreditCard number does not equal 16 digits
Define the instance variable @number


Define a method called check_card with argument @number
Create two empty arrays (evens and odds)
Split the array into evens and odds by indexes
Double each element of evens arrays
Covert evens array elements into strings
Split evens array into single digit elements
Convert evens array element to integers
add the sum of even elements to the sum of odd elements

Call method valid_card
Define a method called valid_card to return a true and false
If sum of evens and odd elements divided by 10 equals 0 return true
else return false

# Initial Solution
=end

class CreditCard
  def initialize(number)
      number = number.to_s.split("").map {|element| element.to_i}
    if number.length != 16
      raise ArgumentError.new("ARGUMENT ERROR!")
    else
    end
    @number = number
  end

  def check_card
    odds = []
    evens = []
    for i in 0..15
      if i % 2 == 0
        evens << @number[i] * 2
      else
        odds << @number[i]
      end
    end
    evens = evens.map {|element| element.to_s.split("")}
    evens = evens.flatten.map {|element| element.to_i}
    evens = evens.reduce(:+)
    odds = odds.reduce(:+)
    sum = odds + evens
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

card = CreditCard.new (4563960122001999)
card.check_card


# Refactored Solution

class CreditCard
  def initialize(number)
    number = number.to_s.split("").map {|element| element.to_i}
    if number.length != 16 then raise ArgumentError.new("ARGUMENT ERROR!") end
    @number = number
  end

  def check_card
    odds = []
    evens = []
    for i in 0..15
      i % 2 == 0 ? evens << @number[i] * 2 : odds << @number[i]
    end
    evens.map! {|element| element.to_s.split("")}
    evens = evens.flatten.map! {|element| element.to_i}
    (evens.reduce(:+) + odds.reduce(:+)) % 10 == 0
  end
end


card = CreditCard.new (4563960122001999)
card.check_card

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Reflection

#What was the most difficult part of this challenge for you and your pair?
#The most difficult part of the challenge was to get the array into strings and then separating them out so we could them ass them as integers.
#What new methods did you find to help you when you refactored?
#I learned about reduce which adds up the array for you.
#What concepts or learnings were you able to solidify in this challenge?
#I think using ArgumentError and taking in empty arrays and modifying them. I feel more comfortable with that now.