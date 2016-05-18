class Puppy

def initialize
   puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
   number.times do p "Woof" end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    puts "The dog is #{7*human_years} years old in dog years!"
  end

  def chase_cars(color)
    puts "The dog is chasing a #{color} car!"
  end

end

puts "This is where our driver code beigns."
spot = Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.roll_over
spot.dog_years(5)
spot.chase_cars("red")

