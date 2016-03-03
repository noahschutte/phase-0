# Virus Predictor

# I worked on this challenge [with: Ryan Dempsey].
# We spent [1] hours on this challenge.

require_relative 'state_data'

class VirusPredictor
# initializes with 3 arguments and defines them as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# refers 2 other methods and inputs variables into each
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  def self.print_all(state_list)
    state_list.each_pair do |k,v|
      v = VirusPredictor.new(k, STATE_DATA[k][:population_density],STATE_DATA[k][:population])
      v.virus_effects
    end
  end
  
  private
# calculating death rates based on population density
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
# calculates spread speed based on population density
  def speed_of_spread #in months
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

#=================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

VirusPredictor.print_all(STATE_DATA)

#=================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?

# The top level hash uses the rocket syntax "=>" to separate key from value. The nested hash uses symbols, which is available after Ruby 1.9 release. It is also the more commonly used practice. 

# What does require_relative do? How is it different from require?

# Require relative and require informs the document that there is another file to reference when searching for objects. Require relative is a subset of require that allows a file in the relative path to be easily accessed with less instruction.

# What are some ways to iterate through a hash?

# Loops including each, each_key, and eacy_pair. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# Many arguments were included in each class method, but were not necessary. 

# What concept did you most solidify in this challenge?

# Constants, local variables, calling key/value contents, and looping over a hash. 