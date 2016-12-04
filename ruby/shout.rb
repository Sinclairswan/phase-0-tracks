# module Shout
#    def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + ":) :)"
#   end

# end

# module Flight
#   def take_off(altitude)
#     puts "Taking off and ascending until reaching #{altitude} ..."
#   end
# end

# class Bird
# 	include Flight
# end

# class Plane
# 	include Flight
# end

# bird = Bird.new
# bird.take_off(800)

# plane = Plane.new
# plane.take_off(30000)


module Shout
	def yell_angrily(words)
		words + "!!!!" 
	end
	def yell_happily(words)
		words + "! :)" 
	end
		
end

class Work
	attr_reader :fired
	include Shout

	def fired(name)
		puts "#{name} you're fired!"	
	end
end

class Sports
	attr_reader :horray
	include Shout
	
	def horray
		puts "Go! Giants"
	end	

end

fireman = Work.new
fire_bob = fireman.fired("bob")
puts fireman.yell_angrily("get out")
puts fireman.yell_happily("You can't fire me, I quit")

baseball = Sports.new
puts baseball.horray
puts baseball.yell_happily("Let's Go")
puts baseball.yell_angrily("He's Out")

