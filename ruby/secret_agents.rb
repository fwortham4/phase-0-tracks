def encrypt(input)
  index = 0
while index < input.length
if !(input[index] == " ")
  if input[index] == "z"
    input[index] = "a"
  else input[index] = input[index].next!
  end
  end
  index += 1
end

puts input
end

encrypt("ab c")

def decrypt(input2)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    index = 0
  while index < input2.length
      input2[index] = alpha[alpha.index(input2[index])-1]
      index+=1
  end
  puts input2
end

encrypt("abc")
decrypt("bcd")