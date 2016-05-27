# Virus Predictor

# I worked on this challenge [ with: Ryan ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
# The require_relative is connecting the data in state_data.rb with the same relative path as the code in this file.

require_relative 'state_data'

class VirusPredictor

# Defines instance variables and connects all the other methods in the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#private
# This method is used to call both the other 2 methods at the same time.
  def virus_effects
    predicted_deaths
    #(@population_density, @population, @state)
    speed_of_spread
    #(@population_density, @state)
  end

  #private

  # Private - private methods can only be called within the class because they can be access by another method (virus-effect). Making the code quite simpler.

# Calculating/predicting the number of deaths based on the pre-existing formula.
  def predicted_deaths
  #(population_density, population, state)
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

# Calculating the rate of deaths with formula using population density.
  def speed_of_spread
  #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state_of_origin, population_hash|
#   p state_of_origin
# state_of_origin = VirusPredictor.new("#{state_of_origin}", STATE_DATA["#{state_of_origin}"], population_hash[:population_density], STATE_DATA["#{state_of_origin}"][:population])
# end

STATE_DATA.each do |state_origin, state_info|
state = VirusPredictor.new(state_origin, state_info[:population_density], state_info[:population])
state.virus_effects
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
################## Reflection Section ##################
# 1.) What are the differences between the two different hash syntaxes shown in the state_data file?
### State_Data is a large hash with smaller hashes of each state, population, and population density nested inside. Also State_Data is a constant (ALL CAPS) variable that should not be changed by the code.

# 2.) What does require_relative do? How is it different from require?
### Require_relative links the information in  the state_data.rb file with the code being run in my_solutions.

# 3.) What are some ways to iterate through a hash?
###

# 4.) When refactoring virus_effects, what stood out to you about the variables, if anything?
### That they were redundant and could be refactored.

# 5.) What concept did you most solidify in this challenge?
### Insstance Variable. Figured out they can be called in any method inside the class where they are defined without be put in the method input.