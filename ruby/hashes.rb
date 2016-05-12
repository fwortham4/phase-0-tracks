#5.3 Symbols and Hashes
#by Forrest Wortham

#Initial interior designer hash.
interior_designer = {
  client_name: "John Doe",
  age: 30,
  number_of_children: nil,
  number_of_bdrooms: 3,
  number_of_barooms: 2,
  pets: true,
  decor_theme: "nautical",
}

puts "What is the new client's name?"
input_client_name = gets.chomp.to_s.upcase
interior_designer[:client_name] = input_client_name

puts "how old is the #{input_client_name}?"
input_age = gets.chomp.to_i
interior_designer[:age] = input_age

puts "How many children does #{input_client_name} have?"
input_children = gets.chomp.to_i
interior_designer[:number_of_children] = input_children

puts "How many bedrooms does #{input_client_name}'s home have?"
input_bdrooms = gets.chomp.to_i
interior_designer[:number_of_bdrooms] =input_bdrooms

puts "How many bathrooms does #{input_client_name}'s home have?"
input_barooms = gets.chomp.to_i
interior_designer[:number_of_barooms] =input_barooms

puts "Does #{input_client_name} have any pets?"
input_pets = gets.chomp.downcase
case input_pets
  when 'y','yes'
    input_pets = true
  when 'n','no'
    input_pets = false
end
interior_designer[:pets] = input_pets

puts "What kind of decor theme would #{input_client_name} like to have?"
input_decor = gets.chomp.to_s
interior_designer[:decor_theme] =input_decor

#prints out revised hash.
p interior_designer

#Opportunity for user change an input value by calling a key.
puts "Would you like to correct a KEY-VALUE Pair? (type none if none)."
answer = gets.chomp.downcase
case answer
  when 'y','yes'
    answer = true
  when 'none'
    answer = false
end
if answer == true
# finds key.
puts "What KEY would you like to change?"
x = gets.chomp.to_s
# changes value.
puts "What VALUE would you like to change?"
y = gets.chomp
else answer == false
  puts "No changes have been made."
end

#executes correct
interior_designer.store(x,y)

# prints out revised hash.
p interior_designer

