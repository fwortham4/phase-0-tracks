hamster_age = ""

puts "Hamster's Name?"
hamster_name = gets.chomp.capitalize
puts "Hamster Volume? (1-10)"
hamster_volume = gets.chomp.to_i
puts "Hamster's fur color?"
hamster_fur = gets.chomp
puts "Is this a good hamster for adoption? (Yes/No)"
hamster_adoptable = gets.chomp.downcase
if hamster_adoptable == "yes"
  hamster_adoptable = true
else hamster_adoptable = false
end
puts "What is the hamster's (estimated) age?"
hamster_age = gets.chomp.to_i
if hamster_age == 0
  hamster_age = "Age Unknown"
end

puts "#{hamster_name}'s record"
puts "Fur Color: #{hamster_fur}"
puts "Approximate Age: #{hamster_age}"
puts "Night Volume: #{hamster_volume}"
puts "Suitable for Adoption: #{hamster_adoptable}"
