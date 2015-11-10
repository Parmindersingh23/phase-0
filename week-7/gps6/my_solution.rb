# Virus Predictor

# Nil Thacker and Parminder Singh worked on this challenge.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
#What does it do?
# It includes the contents from another file whose path is relative to the current file.

# How does it work?
# It includes the contents of the other file where the require_relative command is called.

# How does it differ from require?
# require is most commonly used to import library files

require_relative 'state_data'

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census
class VirusPredictor

  #We are creating instance variables for the initialized instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Call 2 other functions and pass them instance variables

  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end


  private

  #Depending on the Population density, we calulate the number of predicted deaths
  def predicted_deaths
    case @population_density
    when 0..50    then (@population * 0.05).floor
    when 51..100  then (@population * 0.1).floor
    when 101..150 then (@population * 0.2).floor
    when 151..200 then (@population * 0.3).floor
    else (@population * 0.4).floor
    end
  end

  #Calculate how long the virus will take to spread based on pop density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
    when 0..50    then 2.5
    when 51..100  then 2
    when 101..150 then 1.5
    when 151..200 then 1
    else 0.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_data|
  VirusPredictor.new(state, population_data[:population_density], population_data[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects


# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects



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