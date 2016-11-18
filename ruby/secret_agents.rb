# Encrypt method
#INPUT ask user for input -String
#shift letters of string to the next position
#OUTPUT letters shifted -String . lowercase

puts "What shall I encrypt?"
encrypt = gets.chomp

index = 0

while index < encrypt.length
	if encrypt[index] != " "
		encrypt[index] = encrypt[index].next
		index += 1
	else
		index+=1
	end	#if encrypt[index] == " "			
end
puts encrypt



puts "decrypt?"
decrypt = gets.chomp

new_string = ""

i = 0
while i < decrypt.length
	if decrypt[i] != " "
		str ="abcdefghijklmnopqrstuvwxyz"
		new_value = str.index(decrypt[i])
		new_value =new_value -1
		str[new_value]
		new_string = new_string + str[new_value]
		i += 1
	else
	  new_string = new_string + " "
		i += 1
end
end
puts new_string
