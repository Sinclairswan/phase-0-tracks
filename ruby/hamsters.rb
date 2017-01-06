puts "What's your name"
name = gets.chomp.capitalize
puts "What's your volume preference 1-10"
volume = gets.chomp.to_i
puts "what's the fur color"
fur = gets.chomp
puts "Is it a good candidate for adoption y or n"
adoption = gets.chomp

loop = false
until loop == true

if adoption == "y"
   adoption = true
   loop = true 
elsif adoption == "n"
   adoption = false
   loop = true
else puts "Please put y or n"
  adoption =gets.chomp
  
  
  
end
  
end 
puts "What's the age estimate"
age = gets.chomp.to_i
if age == false
  age = nil
else age = gets.chomp
end 



