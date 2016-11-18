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