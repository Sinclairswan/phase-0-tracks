#get user input
# swap first and last names
# indentify vowels [a,e,i,o,u]
# move vowels to the next postion
# identify consonants and move them to next consonant

original_name = false

until original_name =="quit"
	puts "what is your name?"
	original_name = gets.chomp!
		#lowercase, split words, swap order
	input_name = original_name.downcase.split.reverse
		#substitute string with next letter
	input_name.each do |names| 
		names = names.tr_s!('bcdfghjklmnpqrstvwxyz','cdfghjklmnpqrstvwxyb')
		names.tr_s!("aeiou","eioua")
	end
		
	code_name =	input_name.each do |encrpyt|
	  puts "#{encrpyt.capitalize}"
		   	
	end

	name_info = {
	 		"Real name" => original_name,
	 		"Alias" => code_name }

	puts name_info 		
end



