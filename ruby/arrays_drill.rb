def add_to_array(a,b)
  a.push(b)
end

add_to_array([],"a")


def build_array(a,b,c)
  [a,b,c]
end

build_array(1,"two", nil)

chicago = []
p chicago

chicago.insert(0, 'white sox', 'cubs', 'black hawks', 'bears', 'bulls')
p chicago

chicago.delete_at(2)
p chicago

chicago.insert(2, "wildcats")
p chicago

chicago.shift
p chicago

truth = chicago.include?("black hawks")
puts "Your query is #{truth}"

new_york = ['Yankees', 'Knicks', 'Jets', 'Giants', 'Mets']

big_cities = chicago + new_york
p big_cities