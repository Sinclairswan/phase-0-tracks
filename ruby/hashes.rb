#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.
#Print the hash back out to the screen when the designer has answered all of the questions.
#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
#Print the latest version of the hash, and exit the program.

# establish variables
puts "Enter Name"
	fullname = gets.chomp

puts "Enter Address"
	address = gets.chomp

puts "Enter Email"
	email = gets.chomp

puts "Enter Phone"
	phone = gets.chomp

puts "Favorite shade of blue"
	blueshade = gets.chomp

puts "Wallpaper preferences (enter any that apply):\n Paisley,\n Chevrons,\n Photorealistic woodsy scenes (with or without squirrels),\n Abstract woodsy scenes (no squirrels)\n" 
	preference = gets.chomp

puts "Ombre is...\n a. fierce \n b.So last season \n c.Practically medieval in its appalling irrelevance"
	ombre = gets.chomp

		answers = {
			"Name" => fullname,
			"Location" => address,
			"Email" => email,
			"Phone" => phone,
			"Favorite shade of blue" => blueshade,
			"Wallpaper" => preference,
			"Ombre" => ombre
}
#print key and values on each line

 answers.each{|key, value| puts "#{key}: #{value}" }


#convert user input into symbol or exit when "none"
  puts "Enter name of new field to continue other wise enter 'None' "
    update = gets.chomp.downcase.to_sym


	if (update = "none")
		exit
	else

	puts "add field value"
		new_value = gets.chomp
end
#add update value in to hash
answers [update]= new_value

 answers.each{|key, value| puts "#{key}: #{value}" }