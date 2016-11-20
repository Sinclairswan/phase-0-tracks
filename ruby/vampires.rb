#ask for user's name
#ask for user's age
#Ask for user's birth year
#until user enters valid input
#Invite them to eat garlic bread
#Ask user to enroll in healthplan


puts "What is your name?"
fname = gets.chomp





#Compare name(INPUT) to database for "drake cula" and "Tu Fangs" -string
#Flag match with message in display
puts "How old are you?"
age = gets.chomp.to_i

#Compare age and birth year for descrepencies (Age + birth = 2016) = true
puts "What year were you born?"
birth = gets.chomp.to_i

likes_garlic =false
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

	if (age + birth) == 2016

	valid_age = true
	end

#


# collected data=results
#case comparison

#Compare name(INPUT) to database for "drake cula" and "Tu Fangs" -string
#Flag match with message in display

vamp_name = false 
vamp_status = false 

	if fname == "Drake cula" || fname == "Tu Fangs".downcase
		vamp_name = true
		puts "Definitely a vampire"
	end



if garlic && valid_age && health && !vamp_name

	#vamp_status = true
	puts "Probably not a vampire"

elsif !valid_age && garlic || health
	puts "probably a vampire"
		

	elsif !(valid_age && garlic && health)
	puts "Almost certainly a vampire"
		
	else
	puts "results inconclusive"
end
		

#	if valid_age && likes_garlic && health
#		vamp_status = true
#		puts "Probably not a vampire."

	#elsif !(valid_age && likes_garlic) || health
#	elsif valid_age ||likes_garlic && health

#		puts "Almost certainly a vampire"

#	elsif vamp_name 

#		puts "Definitely a vampire."

#	else
#    puts "Results inconclusive."	
		
#end

puts "Applicant name: #{fname}" 
puts "Age: #{age}  " 
puts "Born: #{birth}"

if garlic
	puts "Likes garlic! " 
else
	puts "Hates garlic"
end

	if health == true
		puts "Wants insurance"
	else
		puts "Does not want insurance"
	end





