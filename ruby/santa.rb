
class Santa
	def initialize (gender, ethnicity)
		@gender = "none"
		@ethnicity = "none"
		@reindeer_ranking = [
			"Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", 
			"Cupid", "Donner", "Blitzen"
			]
		reindeer = @reindeer_ranking
		@age = 0
		puts "intializing Santa instance..."	
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def reindeer(reindeer)
			@reindeer_ranking.each do |deer|
			puts "On #{deer}"
			end
	end

	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie} cookie"	
	end

	end

santas = Santa.new("none","black")
santas.speak
santas.eat_milk_and_cookies("peanut butter")
santas.reindeer("bob")

