# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
#Need to take in a postive integer then return a string. Also need to add in a comma when the string is returned.

# What is the input?
#Postive Integer
# What is the output? (i.e. What should the code return?) The code should return a string with a comma in the integer string.
# What are the steps needed to solve the problem?
#Take in a integer and convert to a string, then after that add in a comma once it hits a certain number of digits.


# 1. Initial Solution
def separate_comma(number)
  num = number.to_s
  i = -4
  #I dont know what to put here to make the code go through another cycle. it will pass one test but I need to make it work for more than 4 digits.
    num = num.insert(i,",")
  i -=4
  end
  return num
end




# 2. Refactored Solution - Looked online to refactor!
def separate_comma(number)
  number.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

#number            #=> 12345678
#.to_s             #=> "12345678"
#.reverse          #=> "87654321"
#.scan(/\d{1,3}/)  #=> ["876","543","21"]
#.join(",")        #=> "876,543,21"
#.reverse          #=> "12,345,678"

# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
#I broke down the problem by smaller chunks, and I think there was kinda of only one way of doing this. I had a hard time iterating over each of the number so Im not sure how I can add that in.
#Was your pseudocode effective in helping you build a successful initial solution?
#Yes the pseudocode did help me visualize what simple steps I needed to take. However, somethings are not easily translatable to code in english so I would get stuck on what to do with that.
#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
#I did a little bit of research and looked at different types of solutions. The one liner solution seems very readable and makes more sense to me than my intial solution. I didn't know about all the syntax for my refactored solution so I think I need to read more about that.
#How did you initially iterate through the data structure?
#I intially wanted to use a while loop and if/then statement but that did not work out. So I kinda of dont even know!!
#Do you feel your refactored solution is more readable than your initial solution? Why?
#Yes it is even though my orginal code is simplistic the refactored code is more self explantory to an experienced person.