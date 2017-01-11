

# # Encrypt method
# #INPUT ask user for input -String
# #shift letters of string to the next position
# #OUTPUT letters shifted -String . lowercase

def encryptor(input)
  index = 0
    while index < input.length
        if input[index] != " "
        puts input[index].next 
        index += 1
        else
        puts input[index]
        index +=1
        end
   end
end

 def decrypt_loop(input)
    i = 0
    x = input[i]
    str ="abcdefghijklmnopqrstuvwxyz"
    
    while i < input.length
        if input[i] != " "
             new_value = str.index(x)
             puts str[new_value -1]
             i +=1
            else
             puts str[x]
             i +=1
         end
     end
   
 end




 # Our Driver code
 # Ask user for encryption or decryption

 puts "Would you like to encrypt or decrypt?"
 	answer = gets.chomp
    #based on choice run corrseponding method
 if answer == "encrypt"
 	 puts "What would you like to encrypt?"
 	 input =gets.chomp
 	 encryptor(input)

 	 elsif answer == "decrypt" 
 	 	puts "what would you like to decrypt?"
 	 	input = gets.chomp
 	 	decrypt_loop(input)
 # If invalid answer "bye, bye"
 	 else
 	 	puts "Sorry, bye"
 end


	 	
	





