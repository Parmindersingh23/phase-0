# Pad an Array

# I worked on this challenge [by myself, with:Danielle Cameron ]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input? array, a minimum size (non-negative integer) for the array, and an optional argument of what the array should be "padded"

# What is the output?(i.e. What should the code return?)new array padded with the pad value up to the minimum size.

# What are the steps needed to solve the problem?
# 1. Define method that takes in an array, min_siz, value
# 2. Define variable that is the difference between min_size and array length
# 3. If it is less than the min_size return a new array that is padded.
# 4. Non destructive will create a new array with old array values to padded
# 5. Destructive will overwrite current array with padded values


# 1. Initial Solution #destructive
def pad!(array, min_size, value = nil)
  size_difference = min_size - array.length
    size_difference.times do
      array << value
    end
  array
end
#Non-destructive
def pad(array, min_size, value = nil)
  new_array = array.clone
  size_difference = min_size - new_array.length
    size_difference.times do
      new_array << value
    end
  new_array
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive

  return array << value if array.length <= min_size

  return array
end







# 4. Reflection
#Were you successful in breaking the problem down into small steps?
#Writing the code out in english terms helped.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#We still had some difficulty writing the code out beacuse we were not sure how to start. But once we did with trial and erros we got our code to work.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
#We did manage to make it shorter but using simplier methods.

#What is the difference between destructive and non-destructive methods in your own words?
#destructive method is where you actually replace the value. For non-destructive you are only temporarily holding on to it but not destroying it completely.