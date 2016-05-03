hamster_age = ""

puts "Hamster's Name?"
hamster_name = gets.chomp
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

