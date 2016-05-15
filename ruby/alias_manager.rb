#5.6 Solo Challenge: Manipulating Strings with Iteration
#by Forrest Wortham

directory = {}

puts "What is the spy's full name?\n"

full_name = gets.chomp.downcase
# Takes user input of spy's full name

def name_encryption(full_name)

full_name = full_name.split(' ').rotate.join(' ')
# .split(' ') splits full_name into array ["first", "last"]
# .rotate rotates the first and last name within the array. (Ex. ["last", "first"])
# .join(' ') combines array into a string. (Ex. "last first")

code_name = full_name.split('').map{ |x| x = next_letter(x)}
# .split('') splits the string "last first" into individual characters.
# .map{ |x| x = next_letter(x)} uses the next_letter method on each character and saves the changes.

code_name = code_name.join('')
# .join('') combines individual characters into a

end



def next_letter(x)
# Method that determines vowle from consonants.

vowel = 'aeiou'
consonant = 'bcdfghjklmnpqrstvwxyz'
# Created variables to represent vowels and consonants.

if x == 'u'
    x = 'a'

  elsif x == 'z'
    x = 'b'
    # Connects the ends of the vowels and consonants variabels; full-circle.

  elsif vowel.include?(x)
  # If x is a vowel

    i = vowel.index(x)
    # find its index with in the vowel variable.
    x = vowel[i + 1]
    # replace x with the next vowel

  elsif consonant.include?(x)
  # If x is a consonant.

    i = consonant.index(x)
    # Finds its index within the consonant variable.

    x = consonant[i + 1]
    # Replaces x with the next consonant.

  else
    x
  # Skip all non-letters characters.

  end

end

# Calls the method name_encryption on full_name.
code_name = name_encryption(full_name)
puts  "\n#{full_name}'s new code name is: #{code_name}\n"
directory[code_name] = full_name

# Loop to create multiple code_names
loop do
puts "\nWould you like to create another code name? (type quit when you're done).\n"
full_name = gets.chomp

if
  full_name == 'quit'
  break

else
  code_name = name_encryption(full_name)
  puts  "\n#{full_name}'s new code name is: #{code_name}\n"

  directory[code_name] = full_name
  #Adds full_name and code_name to directory array.

end
end

directory.each { |code_name, full_name|
puts "#{full_name}'s new code name is: #{code_name}"
}
# Directory store all the full_name inputs and created code_name s and prints them all out at the end.

