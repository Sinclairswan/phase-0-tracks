class Santa
	attr_reader :reindeer_ranking, :age, :ethnicity
	attr_accessor :gender

	def initialize(names)
		@gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		@ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = (0..140).to_a
		puts "Initializing Santa instance ..."

	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete("#{reindeer}")	
		@reindeer_ranking.insert(-1,"#{reindeer}")
		puts "Go to the back of the line #{reindeer}!"
	end


	def about
		 puts "Santa is #{@age.sample} years old,#{@ethnicity.sample}, #{@gender.sample}, that gets mad at #{@reindeer_ranking[-1]}"
	end

end

# santa = Santa.new("woman", "black")
# santa.speak
# santa.eat_milk_and_cookies("peanut butter")
# santa.about

names = (1..100).to_a
santas = []
santas << Santa.new(names)

santas.each {|santa| santa.about}

