# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with:Nicole Yee ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
#
# What is the input? An array of strings or numbers
# What is the output? (i.e. What should the code return?) an array of the most frequent values
# What are the steps needed to solve the problem?
# Create new_hash to store key(int or string)/value(the count) pairs
# FOR each element of the input
# => FOR a single element
# => IF array element == current element
# => count += 1
# => ELSE
# => ENDIF
# => new_hash [array element] = count
# => count = 0
# => ENDFOR
# ENDFOR

# 1. Initial Solution
def mode(array)
  hash = {}

  for i in 0...array.length
    count = 0
    current_element = array[i]
    for i in 0...array.length
      if current_element == array[i]
        count += 1
      else
      end
      hash[current_element] = count
    end
  end
  max_array = []
  hash.each {|key, value| (max_array.push(key)) if value == hash.values.max }
  return max_array

end




# 3. Refactored Solution

def mode(array)
  hash = {}
  for i in 0...array.length
    hash[array[i]] = array.count(array[i])
end
  max_array = []
  hash.each {|k, v| (max_array.push(k)) if v == hash.values.max}
  return max_array

end



# 4. Reflection
#Which data structure did you and your pair decide to implement and why?
#
#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#The pseudocode was kinda of more difficult because some of the stuff we wanted to achieve was hard to put into words.
#What issues/successes did you run into when translating your pseudocode to code?
#Most of it went well however we had a hard time returning just the max value and the duplicate max values. We spent a little bit of time on that to make sure it would work how we wanted it to.
#What methods did you use to iterate through the content?
#We used the for loop to iterate through our array.
#Did you find any good ones when you were refactoring?
#When we refactored we used the array.count method, which worked really well. It also made running the rspec file alot faster.
#Were they difficult to implement?
#They hardest part of this assignment was figuring out how to get the indivdual values out even if the array had the same amount of values. For example if the array had [1,1,2,2]. How do we return both of those key items when we run the code.
