# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Syema Ailia ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!



# Input: Begin a method with the argument that contains numbers to be added in the array.
# Output: The method should output the total of that array.

# Steps to solve the problem.

# 1. total initial solution

def total (array)
array.inject(:+)
end



# 3. total refactored solution
def total (array)
  array.inject(:+)
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: The input will be a string
# Output: and the output will the a string that is joined together.
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(array)
  array.join(' ').capitalize + "."
end

# 6. sentence_maker refactored solution
