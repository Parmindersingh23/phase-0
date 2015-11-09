# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A Guess that will take in a intger
# Output: Game will output if the integer is high, low, or correct answer.
# Steps:
#take in an integer
#take in an input from the player
#check that input from that player with the integer that needs to match
#Return if the integer is too high or low
#return if it is correct or not


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end
  def solved?
    if @answer == @guess
      return true
    else
      return false
    end
  end
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end
  def solved?
     @answer == @guess
  end
end

=begin
Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance Variables are used to store certain types of information. Methods represent the actual actions that will be taked with those types of variables and objects.

When should you use instance variables? What do they do for you?

Use them when we need to use them across more than one method. It will remember its info across the whole class.


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is used with If,Else, etc. used to check different types of conditions within the methods. I didn't have too much trouble using them because I tried to keep them simple as possible.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?


Main reasons to use symbols would be their speed and effeiciency. They are also uniquen and cant be maniupalted after they are set unlike strings.


=end
