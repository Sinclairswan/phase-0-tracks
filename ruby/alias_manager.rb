#get user input
# swap first and last names
# indentify vowels [a,e,i,o,u]
# move vowels to the next postion
# identify consonants and move them to next consonant

original_name = false

until original_name =="quit"
	
	puts "what is your name?"
		original_name = gets.chomp!

		 input_name = original_name.downcase.split.reverse
			input_name.each do |names| 
		  		names= names.tr_s!('bcdfghjklmnpqrstvwxyz','cdfghjklmnpqrstvwxyb')
	  		names.tr_s!("aeiou","eioua")
		end
		
	 		input_name.each do |encrpyt|
	   			puts "#{encrpyt.capitalize}"
	 end
end
