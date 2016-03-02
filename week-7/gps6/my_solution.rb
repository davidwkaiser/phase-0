# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#to import a file during development stage to access test data/files, as opposed to pre-installed files / libs / modules / gems or production files
#does not have to be in the same directory, can give it a path.
#it is a method, it takes a string that points to a directory. It has a local scope (require has a global scope)

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #this is used to initialize each instance of the class and match the values being imported to the appropriate instance variables
  #it will import that state name and the population data associated with it.

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end
#returns the predicted # of deaths and the speed of the spread of the virus, it calls two other functions that provide the actual function.

  private

  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
      #number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      factor = 0.3
      #number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      factor = 0.2
      #number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      factor = 0.1
      #number_of_deaths = (@population * 0.1).floor
    else
      factor = 0.05
      #number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{(@population * factor).floor} people in this outbreak"

  end

  def speed_of_spread#(population_density, state) #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  #puts state, data
  report = VirusPredictor.new(state, data[:population_density], data[:population])
  report.virus_effects
end



#=======================================================================
# Reflection Section
=begin
**What are the differences between the two different hash syntaxes shown in the state_data file?
One uses the  => notation, the other uses the : notation. I beieve there are not differences other than appearances.

**What does require_relative do? How is it different from require?
As noted above, require_relative is used to import a file during development stage
to access test data/files, as opposed to pre-installed files / libs / modules / gems or production files
It does not have to be in the same directory, can give it a path.
it is a method, it takes a string that points to a directory. It has a local scope (require has a global scope)

**What are some ways to iterate through a hash?
.each is probably the easiest, although I always default to a for loop. We could probably use .map as well. while and until might
work, but that seems complicated.

**When refactoring virus_effects, what stood out to you about the variables, if anything?
I had to stare at it a long time before understanding that the arguments were creating local variables that were not necessary,
when the instance variables created in the method were already accessing the proper data.

**What concept did you most solidify in this challenge?
instance methods / classes, .each loops


=end




