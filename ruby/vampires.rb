puts "What Is your name?"
name = gets.chomp.downcase

puts "How old are you?"
age = gets.chomp.to_i

puts "Where were you born?"
birth_location = gets.chomp.downcase

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes or No)"
garlic = gets.chomp.downcase
if garlic == "yes"
  garlic = true
else garlic = false
end

puts "Would you like to enroll in the company’s health insurance? (Yes or No)"
health_insurance = gets.chomp.downcase
if health_insurance == "yes"
  health_insurance = true
else health_insurance = false
end