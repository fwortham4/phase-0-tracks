puts "What Is your name?"
name = gets.chomp.downcase.to_s

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

if age<=100 && (garlic == true || health_insurance == true) == true
  puts "Probably NOT a vampire."
end

if age>100 && (garlic == true || health_insurance == false) == true
  puts "Probably a vampire."
end

if age>100 && (garlic == false && health_insurance == false) == true
  puts "Almost certainly a vampire."
end

if name = "drake cula" || "tu fang" == true
  puts "Definitely a vampire."
end