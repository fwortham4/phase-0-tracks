# 6.3 Attributes
# by Forrest Wortham

class Santa

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

age = 0

  def initialize(gender, ethnicity, weight, origin)
    p "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @weight = weight
    @origin = origin
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
    cookie
  end
end

puts "This is where the santa driver beigns."
# santa1 = Santa.new("female","Arabian")
# santa1.speak
# santa1.eat_milk_and_cookies("chocolate chip cookie")


santas_array = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas_array << Santa.new(example_genders[i])
end
example_weight = [0, 50, 100, 150, 200, 250, 300]
example_origin = ["Memphis", "Toronto", "Chicago", "New York", "Nashville", "Atlantis", "the Moon"]
santa = Santa.new(example_genders, example_ethnicities,example_weight,example_origin)