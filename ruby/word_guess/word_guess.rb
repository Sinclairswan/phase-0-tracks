class Guess
	def initialize(word)
		@word = word.downcase!
		@spaces = "_"* word.length
		@chances = word.length
		@guessed_wrong = []
		@guessed_right = []
		puts "Player One: Please enter a word for Player Two to guess."
		 
	end

	

end