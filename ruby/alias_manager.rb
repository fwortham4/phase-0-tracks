#5.6 Solo Challenge: Manipulating Strings with Iteration
#by Forrest Wortham

puts "What is the spy's full name?"

#takes user input of spy's full name
full_name = gets.chomp.downcase

#splits full name into array["first", "last"]
#.rotate inverts the first and last name within the array.
reverse_name = full_name.split(' ').rotate

p reverse_name