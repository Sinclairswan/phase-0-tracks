# Encrypt method
#INPUT ask user for input -String
#shift letters of string to the next position
#OUTPUT letters shifted -String . lowercase
def encrypt_loop(input)
    index = 0
    while index < input.length
        if input[index] != " "
          input[index].next
            index += 1
        else
            index+=1
        end
    end
    p input
end

def decrypt_loop(input)
    new_string = ""
    i = 0
    #iderate through the String
    while i < input.length
        if input[i] != " "
            # get the index of the alphabet String
            str ="abcdefghijklmnopqrstuvwxyz"
            new_value = str.index(input[i])
            #change to the new letter
            new_value =new_value -1
            str[new_value]
            #add letter to new string
            new_string = new_string + str[new_value]
            i += 1
        else
            new_string = new_string + " "
            i += 1
        end
    end
    p new_string
end
# Our Driver code
# Ask user for encryption or decryption

puts "Would you like to encrypt or decrypt?"
	answer = gets.chomp
#based on choice run corrseponding method
if answer == "encrypt"
	 puts "What would you like to encrypt?"
	 encrypt =gets.chomp
	 encrypt_loop(input)

	 elsif answer == "decrypt" 
	 	puts "what would you like to decrypt?"
	 	decrypt = gets.chomp
	 	decrypt_loop(input)
# If invalid answer "bye, bye"
	 else
	 	puts "Sorry, bye"

	 end

	 	
	





