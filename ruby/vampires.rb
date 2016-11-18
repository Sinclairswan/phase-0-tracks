#ask for user's name
#ask for user's age
#Ask for user's birth year
#until user enters valid input
#Invite them to eat garlic bread
#Ask user to enroll in healthplan


puts "What is your name?"
fname = gets.chomp


puts "How old are you?"
age = gets.chomp.to_i

age == (18..100) 

puts "What year were you born?"
birth = gets.chomp
 
valid_input = false

until valid_input

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"

food =gets.chomp.downcase

	if food == "y"
		puts "Great!"
		valid_input = true
		
	elsif food == "n"
		puts "So you don't like garlic?"
		valid_input = true
	else
		puts "Are you sure?"


	end
end

valid_input2 = false

until valid_input2
	
puts "Would you like to enroll in our healthplan? (Y/N) "

healthplan = gets.chomp.downcase

	if healthplan =="y"
		puts "Let's enroll you."
		valid_input2 = true
	elsif healthplan == "n"
		puts "Interesting."
		valid_input2 = true
	else
		puts "What was that?"
	end

end

puts "Applicant name:"+ fname
puts "Age:"+ age.to_s
puts "DOB:" + birth.to_s
puts "Hungry:" + food
puts "Enroll in healthplan:" + healthplan





if age && food && healthplan
	puts "Probably not a vampire."
	
elsif age == false || (valid_input == false || valid_input2 == false)
	puts "Probably a vampire."

elsif age =false && valid_input = false && valid_input2 = false
	puts "Almost certainly a vampire."

else
	puts "results inconclusive"
		
end


#Test for Vampire method
# input: applicant answers - INTREGER and STRING
# output: vampire status - STRING
#define vamp_test method

