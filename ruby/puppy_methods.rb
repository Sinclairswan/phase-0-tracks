class Puppy

def initialize
	puts "Initializing new puppy instance ..."
end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

def speak(integer)
	integer.times do
	puts "Woof!"
	end
	end

def roll_over
	puts "roll over"
end

def dog_years(age)
	puts age * 7
end

def play_dead
	puts "play dead"
end
end

spot = Puppy.new
spot.fetch("ball")

spot.speak(3)
spot.roll_over
spot.dog_years(5)
spot.play_dead


class Student

	def initialize
		puts "Initialize Student..."
	end

	def test(number)
		puts "passed #{number}"
	end

	def assignments(integer)
		puts "Handed in #{integer} assignments"
	end

end

def store_instance(student,number)
	number{student}
	number
end

def print_list(number)
	number.each{|student,number| puts "these are your grades"}
end


puts print_list

