# 6.3 Attributes
# by Forrest Wortham



class Santa

attr_reader :age, :ethnicity, :reindeer_ranking
attr_accessor :age, :gender

# gender, ethnicity, weight, origin

def initialize(gender, ethnicity, weight, origin)
    p "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @weight = weight
    @origin = origin
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
end

santas = []

def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
    cookie
  end

def celebrate_birthday
  @age = @age + 1
end

def get_mad_at=(reindeer)
  @reindeer_ranking.delete(reindeer)
    @reindeer_ranking = @reindeer_ranking << reindeer
end

end

santas_array = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_weight = [0, 50, 100, 150, 200, 250, 300]
example_origin = ["Memphis", "Toronto", "Chicago", "New York", "Nashville", "Atlantis", "the Moon"]

example_genders.length.times do |i|

# Adds attributes to santas in santas_array
santas_array << Santa.new(example_genders[i], example_ethnicities[i], example_weight[i], example_origin[i])

puts "There are #{santas_array.length} santas in the group!"

end

# Driver Code:

10.times do santas_array[0].celebrate_birthday
  end
p santas_array[0].reindeer_ranking
p santas_array[0].age
  puts "Current reindeer ranking is #{santas_array[0].reindeer_ranking}"
  santas_array[0].get_mad_at = "Vixen"
  puts "Current reindeer ranking is #{santas_array[0].reindeer_ranking}"
p santas_array[0].gender
  santas_array[0].gender = "Male"
p santas_array[0].gender




# santas_array[0].celebrate_birthday
# p santas_array

# reindeer_ranking.get_mad_at("Vixen")
# p reindeer_ranking

# p santas_array



