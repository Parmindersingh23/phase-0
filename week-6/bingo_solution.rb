# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [10] hours on this challenge.


# Release 0: Pseudocode
# Outline:
#Need to create a board that has rows and columns
#Need numbers that will point to the letters of BINGO
#Need to randomize when picking those numbers
#If that number is hit then put a X on that number.
#Keep doing that until we hit a Bingo and display that board


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #@letters = ['B','I','N','G','O']
  #@numbers = rand(1..100)
# Check the called column for the number called.
#fill in the outline here
  #@called_column = @numbers
# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #if called_number = @numbers
  #put "X" where the number is

# Display a column to the console
  #fill in the outline here
#if the number is called then replace the number with "x"
# Display the board to the console (prettily)
  #fill in the outline here
  #p the rows and columns for BINGO
  #p each random number on the board
# Initial Solution

=begin

#my intial solution didnt really work or was not complete. So I tried to do it in a completley different way and struggled through it!!

class BingoBoard

  def initialize(board)
   @card = []
    5.times do
      row = []
      5.times do
        row << rand(25)
      end
      @card << row

  end

  def call
   @row = ['B','I','N','G','O'] #using these letter for the top row
   @column = rand(1..100) #randomizing the numbers picked for the game
  end

  def check
    call #calling the call method
    @numbers.each do |row| #running through the numbers for the row
      row.each do |column| #numbers for the columns
        print @column.to_s.square 5 #printing out the columns and changing them to a string.
      end
    end
  end
 end




=end

#Refactored Code

class BingoBoard

  def initialize(board)
    @bingo_board = Array.new(5){Array(5.times.map{rand(1..100)})}
  end

  def call
    @column = rand(5)
    @random_numbers = rand(1..100)
  end

  def check
    @bingo_board.each{|row| if row [@column] == @random_numbers
      row[@column] = "XX" end}
  end

  def display_board
    puts "B   I   N   G   O!"
  20.times do
  print "*"
  sleep 0.1
  end
  puts "  "
  @bingo_board.each { |element| puts "   " + element.join("  ").to_s }
  20.times do
  print "*"
  sleep 0.1
  end
  p
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display_board

=begin
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I don't think the psuedocoding was the hard part, but actually translating it into code was hard for me. I made a lot of changes in code that I didnt have in my pseudocode.

I think I am slowly getting better at it but sometimes it is still hard to clearly write out everything.
What are the benefits of using a class for this challenge?

The benefits of instance variables are helpful here because we are accessing many different things. Using a class helps by letting all the methods access whatever they need withough any conflict.


How can you access coordinates in a nested array?

You can access corrdinates by the bracket method such as : array[row] or array[column]

What methods did you use to access and modify the array?

I used .each to go over the array and also .map.

Give an example of a new method you learned while reviewing the Ruby docs. Based on
what you see in the docs, what purpose does it serve, and how is it called?

.map can be used to create a new array based on the original array and in fast way.

How did you determine what should be an instance variable versus a local variable?

When ever I needed to call anything outside of each method within another method I knew which ones do use. I didnt focus on using local variables in this challenge since it was not the focus.

What do you feel is most improved in your refactored solution?

Making the Bingo game actually work! It was a tough challenge and I made alot of changes through out and got rid of alot of code that I didn't even need. I would just comment out lines and then delete them if that piece did not break the code.


=end