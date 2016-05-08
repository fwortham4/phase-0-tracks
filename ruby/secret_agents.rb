#Encryption Method

#encrypts the users input
def encrypt(input)
  index = 0
#loops through all the letters of the input string
while index < input.length
#declares if the input is a "space" then skip it
if !(input[index] == " ")
#connects the end of the alphabet to the begin; full circle
  if input[index] == "z"
    input[index] = "a"
  #takes each letter from the input string moves to the next letter
  else input[index] = input[index].next!
  end
  end
  #moves to the next letter of the input string
  index += 1
end

puts input
end

#Decryption Method

def decrypt(input2)
  #creates a base alphabet varible to be used later
    alpha = "abcdefghijklmnopqrstuvwxyz"
    index = 0
  #loops through all the letters of the input string
  while index < input2.length
  #takes each letter from the input string and uses the alphabet variable to move back 1 letter
      input2[index] = alpha[alpha.index(input2[index])-1]
      #moves to the next letter of the input string
      index+=1
  end
  puts input2
end

#calls both methods
encrypt("ab c")
decrypt("bcd")

# the nested method does NOT work for me because the result from the Encryption method returns a nil at the end.
#decrypt(encrypt("swordfish"))

#puts "Agent, would you like to encrypt or decrypt a message?"
#answer = gets.chomp.downcase
#if answer = 'encrypt'
  #encrypt("x marks the spot")
#elsif answer = 'decrypt'
 #decrypt("txpsegjti")
#else "Your Answer is not valid."
#end