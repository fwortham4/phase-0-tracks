# 6.5 Modules - Release2
# by Forrest Wortham

module Flight
  def take_off(altitude)
    puts "Take off and ascending intul reaching #{altitude}..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)