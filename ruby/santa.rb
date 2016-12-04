
class Santa
	attr_reader :reindeer_ranking, :age, :ethnicity
	attr_accessor :gender

	def initialize(names) 
		@gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		@ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@reindeer_ranking = [
			"Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", 
			"Cupid", "Donner", "Blitzen"
			]
		@age = (1..140).to_a
		puts "intializing Santa instance..."	
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	# def reindeer
	# 		@reindeer_ranking.each do |deer|
	# 		puts "On #{deer}"
	# 		end
	#end

	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie} cookie"	
	end

	def celebrate_birthday
		@age = @age +1
	end

	def get_mad_at(reindeer)
		#@reindeer_ranking.slice(0)
		@reindeer_ranking.delete("#{reindeer}")	
		@reindeer_ranking.insert(-1,"#{reindeer}")
		puts "Go to the back of the line #{reindeer}!"
	end
	# # getter
	# def reindeer
	# 	@reindeer_ranking 	
	# end
	# #setter
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# #getter
	# def age
	# 	@age
	# end
	# #getter
	# def ethnicity
	# 	@ethnicity
	# end

	def about
		puts "Santa is #{@age.sample} years old,#{@ethnicity.sample}, #{@gender.sample}, that gets mad at #{@reindeer_ranking[-1]}"
	end

end

names = (1..100).to_a
santas = []

names.each do |names|
	#puts "Creating a Santa named #{names} ..."
	santas << Santa.new(names)
	#puts "There are now #{santas.length} Santa instances in the array"
  	#puts "----"
end

#santas = Santa.new

# santas.speak
# santas.eat_milk_and_cookies("peanut butter")
# #santas.reindeer
#puts santas.get_mad_at("Vixen")
# puts santas.reindeer_ranking
#puts santas.age 
# puts santas.celebrate_birthday
# puts santas.gender = "female"
santas.each do |santas|
   santas.about
end



