

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#There was strings that were use as well as symbols. Which made things more clear.

#What does require_relative do? How is it different from require?
#require_relative complements the built in methods require by allowing you to load a file that is relative to the file containing the require_relative statement.

#What are some ways to iterate through a hash?
#We used a each do loop and then grabed the keys and values that we needed.

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#We didnt really need to implement += for the values that were being incremented. Also there was unnecessary arguments that were being passed that were not needed because we could just use instance variables.
#What concept did you most solidify in this challenge?
#I think for me just looking at the code and reading through it to add and modify things to make it better or add new functionality to the methods.