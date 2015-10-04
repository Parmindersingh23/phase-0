# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [.7] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input
# 5. Where is the error in the code?
#expecting key word_end
# 6. Why did the interpreter give you this error?
#there is a missing end in the code.

# --- error -------------------------------------------------------

south_park = 'fun'

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#Gives us south_park as the main object
# 4. Where is the error in the code?
#the local variable is unassigned to anything, so we need to set it to something.
# 5. Why did the interpreter give you this error?
# local variable is unassigned.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#undefined method
# 3. What additional information does the interpreter provide about this type of error?
#there is no method for the main object
# 4. Where is the error in the code?
#this method has no argument so we need to assign it one.
# 5. Why did the interpreter give you this error?
#undefined method.

# --- error -------------------------------------------------------

def cartmans_phrase (cartman)
  puts cartman
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#67
# 2. What is the type of error message?
#the number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#theres 0 arguments
# 4. Where is the error in the code?
#the method as no defined argument to take in.
# 5. Why did the interpreter give you this error?
#there is a argument error.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('hell')

# 1. What is the line number where the error occurs?
#86
# 2. What is the type of error message?
#wrong number of arugments
# 3. What additional information does the interpreter provide about this type of error?
#there is a conflict on line 90 also
# 4. Where is the error in the code?
#'<main>'
# 5. Why did the interpreter give you this error?
#there is no string attached to the arugment so it is empty.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie("A meteor the size of the earth is about to hit","Wyoming!")

# 1. What is the line number where the error occurs?
#107
# 2. What is the type of error message?
#number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#only (1 for 2) arguments error with also line 111
# 4. Where is the error in the code?
#there was missing string
# 5. Why did the interpreter give you this error?
#missing string, so ruby needs two not one.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#126
# 2. What is the type of error message?
#string cant be fixnum
# 3. What additional information does the interpreter provide about this type of error?
#type error
# 4. Where is the error in the code?
#integer is being multiplied by a string.
# 5. Why did the interpreter give you this error?
#you cant have a integer multiply a string, it has to be the other way around.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
#141
# 2. What is the type of error message?
#divide by 0
# 3. What additional information does the interpreter provide about this type of error?
#zero division error
# 4. Where is the error in the code?
#you can't divide an integer by 0
# 5. Why did the interpreter give you this error?
#In math you can't divide by 0!

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#157
# 2. What is the type of error message?
#cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#load error
# 4. Where is the error in the code?
#that file doesnt exist
# 5. Why did the interpreter give you this error?
#this file doesnt exist in my computer so it wont run


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#Error 107 because I am still not super comfortable with string subs.
#Were you able to determine why each error message happened based on the code?
#Yes most of them were easy to catch. But I did have to think about for some of them.
#When you encounter errors in your future code, what process will you follow to help you debug?
#Using this porcess you can dial down to what you need to fix and you can make some small changes to see if you can fix them.