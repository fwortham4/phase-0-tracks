puts "How many employees will be processed?"
new_employees = ((gets.chomp.to_i)-1)
new_employees -= 1

def vampire_employees(new_employees)

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

#Unable to get the allergies (Release 4) to work properly

#puts "List your allergies. (type done when done listing or if you have none)."

#while allergies = [gets.chomp.downcase.to_s]
  #case allergies
    #when'sunshine','mirrors','pointy wood'
      #puts "Definitely a vampire!!!\n\n"
      #break
    #when'done'
      #break
    #else loop do
    #puts "What other allergies do you have? (type done when done listing)."
    #break 'done','sunshine','mirrors','pointy wood'
    #end
    #end

puts "Name: #{name}"
puts "Age: #{age}"
puts "Birth Location: #{birth_location}"
puts "Garlic?: #{garlic}"
puts "Health Insurance?: #{health_insurance}\n\n"
#puts "Allergies: #{allergies}\n\n"

if age<=100 && (garlic == true || health_insurance == true) == true
  puts "Probably NOT a vampire.\n\n"
elsif age>100 && (garlic == true || health_insurance == false) == true
  puts "Probably a vampire.\n\n"
elsif age>100 && (garlic == false && health_insurance == false) == true
  puts "Almost certainly a vampire.\n\n"
else puts "Result are inconclusive.\n\n"
end

case name
  when 'drake cula','tu fang'
    puts "Definitely a vampire!!!\n\n"
   end
   puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends.\n\n"
end
#end

vampire_employees(new_employees)

# Unable to get loop for number of employees to work.
loop do vampire_employees(new_employees)
break if new_employees <= 0
end