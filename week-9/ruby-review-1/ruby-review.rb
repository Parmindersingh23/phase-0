#Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Method reverse takes in argument of the string
#take in the sentence string and split it individually
#Loop through each string and reverse it
#join the sentence and join it


# Initial Solution
def reverse(string)
  words = string.split(' ')
  reverse_string = []

  words.length.times do |i|
    reverse_string[i] = words[i].reverse
  end


  return reverse_string.join(" ")
end









# Reflection
#What concepts did you review in this challenge?
#Just simple methods like loops and strings
#What is still confusing to you about Ruby?
#I think I still need to review attr and arrays more but I just havent had time.
#What are you going to study to get more prepared for Phase 1?
#I need to go over variables and attr readers and setters.