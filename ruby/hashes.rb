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
input_client_name = gets.chomp.to_s
interior_designer[:client_name] = input_client_name

puts "how old is the new client?"
input_age = gets.chomp.to_i
interior_designer[:age] = input_age

puts "How many children does #{input_client_name} have?"
input_children = gets.chomp.to_i
interior_designer[:age] = input_children

puts "How many bedrooms does #{input_client_name}'s home have?"
input_bdrooms = gets.chomp.to_i
interior_designer[:number_of_bdrooms] =input_bdrooms

puts "How many bathrooms does #{input_client_name}'s home have?"
input_barooms = gets.chomp.to_i
interior_designer[:number_of_barooms] =input_barooms

puts "Does #{input_client_name} have any pets?"
input_pets = gets.chomp.downcase
case pets
  when 'y','yes'
    input_pets = true
  when 'n','no'
    input_pets = false
end
interior_designer[:pets] = input_pets

puts "What kind of decor theme would #{input_client_name} like to have?"
input_decor = gets.chomp.to_s
interior_designer[:decor_theme] =input_decor