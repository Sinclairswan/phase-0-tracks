#ask for hamester name
#store name to varible
#Ask for volume level 1-10
#Ask for fur color
#store fur color
#good or bad for adoption
#ask for age hamster age

puts "What's your hamster's name?"
hamster_name = gets.chomp

puts "How loud is your hamster from 1-10?"
#volume_level = gets.chomp.to_i
#if volume_level =="" || volume_level >10 || volume_level <0
#	puts "How loud 1-10?" 
#	until volume_level = 1..10
#		volume_level = gets.chomp
		
#	end
#end

# create a flag for loop
isTrue = false
# create an until loop which will run when the flag is true
until isTrue == true
	volume_level = gets.chomp.to_i
#  within the loop we will create an if statement
#  asking if user input is = "" if so assign nil
	if volume_level == ""
		volume_level = nil
		isTrue = true
		break
	elsif (1..10).include?(volume_level)
		isTrue = true
		break
	else 
		puts "Please enter a number between 1 and 10"
	end 
end 
#  set flag to true to get out of the loop
#  elsee if user input is between 1..10
#  set flag to true to get out of the loop
#  if everything is false the loop will repeat

puts "what color is their fur?"
fur_color = gets.chomp

puts "Is the hamster good for adoption true or false?"
#adoption = gets.chomp

isTrue = false
# create an until loop which will run when the flag is true
until isTrue == true
	adoption = gets.chomp.downcase
#  within the loop we will create an if statement
#  asking if user input is = "" if so assign nil
	if adoption == "true"
		adoption = true
		isTrue = true
		break
	elsif adoption == "false"
		adoption = false
		isTrue = true
		break
	else 
		puts "Adoption True or False?"
	end 
end




puts "How old is the hamster?"
isTrue = false
until isTrue ==true
	age = gets.chomp.to_i
if age =="" 
	age = nil
	isTrue = true
elsif age > 0
	isTrue = true
	break
else
    puts "How old?"			
end
end

puts "Hamster name is:" + hamster_name
puts "Volume level is a " + volume_level.to_s
puts "Fur color:" + fur_color
puts "Good candidate for adoption:" + (adoption ? "true" : "false")
puts "Hamster age:" + age.to_s
