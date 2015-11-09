#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [2] hours on this challenge.

# Pseudocode

# Input: Will be my name
# Output: Will be the Greeting of Hello


class NameData

  attr_reader :name
  def initialize(name)
      @name = name
  end
end


class Greetings
  def initialize(name)
    @namedata = NameData.new(name)
  end
  def hello
    puts"Hello #{@namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new("Parminder")
greet.hello




=begin

RELEASE_1.rb QUESTIONS

1. What are these methods doing?

  The methods change the attributes of an instance of the Profile class. Profile maintains age, name and occupation within instance variables.

2. How are they modifying or returning the value of instance variables?

  When these methods are called, they are given new values by setting ne instance variables.


RELEASE_2.rb QUESTIONS

1. What changed between the last release and this release?

  A reader method (attr_reader) was added.

2. What was replaced?
  #what_is_age was replaced with 1 line, attr_reader: age

3. Is this code simpler than the last?
  Yes

RELEASE_3.rb QUESTIONS

1. What changed between the last release and this release?

  attr_writer was added

2. What was replaced?

attr_writer: age was added into one line

3. Is this code simpler than the last?

  Yes.

RELEASE 6: FINAL QUESTIONS

1. What is a reader method?

  A method that returns the value or state of a variable outside of its class but wont change.

2. What is a writer method?

  A method that allows you to change the value or state of a variable outside of its class but does not allow it to be read.

3. What do the attr methods do for you?

  Attr methods allow you to read and write variable values with one line of code.

4. Should you always use an accessor to cover your bases? Why or Why not?

No, because these variables are changable and that can cause a mess if you forget what you have done to the other methods and classes. You don't want to have to go back and try to figure out what method or class is changing the variables around.




5. What is confusing to you about these methods?

  I am still not fully set on how all of these work. I do understand how they work and why, but im still having a hard time how I can use this for larger projects.

=end










