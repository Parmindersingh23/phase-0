# Virus Predictor

# I worked on this challenge [by myself, with: Bernadette Masciocchi].
# We spent [1.5] hours on this challenge.

require_relative 'state_data'

class VirusPredictor
  #create instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calls predicted_deaths and speed_of_spread methods, passes instance        variables


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #called only in the class VirusPredictor

  #depending upon population density, they calculate number of predicted       deaths
  def predicted_deaths
  # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  #calculates speed of spread rate in months
  #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.

  def speed_of_spread
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do |key,value|
  state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  state.virus_effects
end

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