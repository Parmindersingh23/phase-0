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

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call

    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)

  end

  def check
    call
    @bingo_board.each do |n|
      index = n.index(@number)
      n[index] = 'X' unless index.nil?
    end

  end

end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.number_letter
new_game.checker

#Reflection


