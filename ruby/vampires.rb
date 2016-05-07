puts "What Is your name?"
name = gets.chomp.downcase.to_s

puts "How old are you?"
age = gets.chomp.to_i

puts "Where were you born?"
birth_location = gets.chomp.downcase

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes or No)"
garlic = gets.chomp.downcase
case garlic
  when 'y','Y','yes'
    garlic = true
  when 'n', 'N','no'
    garlic = false
end

puts "Would you like to enroll in the company’s health insurance? (Yes or No)"
health_insurance = gets.chomp.downcase
case health_insurance
  when 'y','Y','yes'
    health_insurance = true
  when 'n', 'N','no'
    health_insurance = false
end

puts "Name: #{name}"
puts "Age: #{age}"
puts "Birth Location: #{birth_location}"
puts "Garlic?: #{garlic}"
puts "Health Insurance?: #{health_insurance}"

if age<=100 && (garlic == true || health_insurance == true) == true
  puts "Probably NOT a vampire."
elsif age>100 && (garlic == true || health_insurance == false) == true
  puts "Probably a vampire."
elsif age>100 && (garlic == false && health_insurance == false) == true
  puts "Almost certainly a vampire."
elsif case name
  when 'drake cula','tu fang'
    puts "Definitely a vampire!!!"
    end
else puts "Result are inconclusive."
end