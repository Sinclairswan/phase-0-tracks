class Dancer
	attr_reader :name, :age
	attr_accessor :age 
	
	def initialize(name,age)
		@name = name
		@age = age
	end

	def name 
		@name
	end

	def age
		@age
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def queue_dance_with(dancer)
		@next_dancer = [dancer]
		@first_dancer = @next_dancer.at(0)
		@first_dancer
	end

	def card
		@next =[]
		@next << @first_dancer

	end
	

	def begin_next_dance
		p "Now dancing with #{@first_dancer}"
		
	end
end