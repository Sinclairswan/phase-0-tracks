# module Shout
#   def self.angrily(words)
#   	words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!" + ":) :)"
#   end
# end


# Shout.angrily("go away")
# Shout.yelling_happily("how are you")

module Shout
	def yell_anger(words)
		puts words + "!!!" + ":("
	end
	def yell_happy(words)
		puts words + "!" + ":)"
	end
end


class Baseball
	include Shout
end

class Traffic
	include Shout
end

ref = Baseball.new
ref.yell_anger("You're out")
ref.yell_happy("Good game, everyone")

car = Traffic.new
car.yell_anger("watch it buddy")
car.yell_happy("Thank you for letting me merge")
