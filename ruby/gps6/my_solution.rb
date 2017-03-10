# Virus Predictor

# I worked on this challenge [by myself, with: Eli and Clint as instructor].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#require is for the ruby directory gems
#relative_require is a relative path to the working ruby file
require_relative 'state_data'

class VirusPredictor

#used to store all the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#used to call other methods - a methodymethod
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

#everything below will be private and can't be called as a method only as self.
  private

#a calc based on population density and population og given state and performs a print
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
        mulitplier =  0.4
    elsif @population_density >= 150
        mulitplier =  0.3
    elsif @population_density >= 100
        mulitplier =  0.2
    elsif @population_density >= 50
        mulitplier =  0.1
    else
        mulitplier = 0.05
    end

    number_of_deaths = (@population * mulitplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#does a different calculation based on population_density and prints
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
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

#loop through the State_data hash keys
#for each key create a state class (code already there)
#call the virus effects method

STATE_DATA.each do |state_name, data|
    state_name = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
    state_name.virus_effects
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
# What are the differences between the two different hash syntaxes shown in the state_data file?
  #these are just two different ways to create key value pairs. the one with symbols can only be use for symbols keys
# What does require_relative do? How is it different from require?
  #require_relative allows access to another ruby file in a relative path. require would search the ruby home directory first.
# What are some ways to iterate through a hash?
  #.each is one way. Another is to loop through keys in a loop
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #we noticed that the state variables and the method itself could be elminiated. We finally noticed that the parameters weren't being leveraged for the method calls
# What concept did you most solidify in this challenge?
  #The concept of relative and relative_require was not solid before. Now I feel better.