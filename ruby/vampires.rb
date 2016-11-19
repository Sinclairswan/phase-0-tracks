#ask for user's name
#ask for user's age
#Ask for user's birth year
#until user enters valid input
#Invite them to eat garlic bread
#Ask user to enroll in healthplan


puts "What is your name?"
fname = gets.chomp

vamp_name =false
if fname =="Drake cula"
	vamp_name =true
elsif fname == "Two Fangs"
	vamp_name = true
else
		
end

#Compare name(INPUT) to database for "drake cula" and "Tu Fangs" -string
#Flag match with message in display
puts "How old are you?"
age = gets.chomp.to_i

#Compare age and birth year for descrepencies (Age + birth = 2016) = true
puts "What year were you born?"
birth = gets.chomp.to_i

garlic = false 
until garlic
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
	food =gets.chomp
	# True or False  question
	#if else
		if 	food == "y"
			garlic = true
		elsif food == "n"
			garlic = true
		else
			puts "Plesase use 'Y' or 'N'."
		end	
end

health = false

until health

puts "Would you like to enroll in the company healthplan (Y/N)"
insurance = gets.chomp.to_s
# True or False  question
 #if insurance
		if 	insurance == "y"
			health = true
		elsif insurance == "n"
			health = true
		else
			puts "Plesase use 'Y' or 'N'."
		end	
end 	

valid_age = false


if age + birth = 2016

	valid_age = true
end


	


# collected data=results
#case comparison