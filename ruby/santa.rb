
class Santa
	def initialize (gender, ethnicity)
		@gender = "none"
		@ethnicity = ethnicity
		@reindeer_ranking = [
			"Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", 
			"Cupid", "Donner", "Blitzen"
			]
		@age = 0
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
		@age + 1
	end

	def get_mad_at(reindeer)
		#@reindeer_ranking.slice(0)
		@reindeer_ranking.delete("#{reindeer}")	
		@reindeer_ranking.insert(-1,"#{reindeer}")
	end
	def reindeer
		@reindeer_ranking 	
	end
	def gender=(new_gender)
		@gender = new_gender
	end


	def age
		@age
	end
	def ethnicity
		@ethnicity
	end

	def about
		puts "Santa is #{@age} years old, a #{@gender}, gets mad at #{@reindeer_ranking[-1]}"
	end

end

santas = Santa.new("none","black")
santas.speak
santas.eat_milk_and_cookies("peanut butter")
#santas.reindeer
santas.get_mad_at("Vixen")
puts santas.reindeer
puts santas.age 
puts santas.celebrate_birthday
puts santas.gender = "female"
puts santas.ethnicity
puts santas.about



