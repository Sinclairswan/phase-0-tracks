#Word Guess game. In this game player one will enter a word for player two to guess.
# Player two wil guessone letter at a time and any matching letters will be place in the correct location
# Player two will have as many chances as the length of the word plus 2 to guess the correct word (i.e. "cat" = 3 + 2 = 5 chances)
#If the player guesses all of the correct 

# Method : Initialize class with empty arrays for user word and "_,", guessed letter array, number of chances,.
#          Prompt user for word to enter (make in to  "*" instead of characters.)
# =>       Display blanks "_,_,_,_" 
#          After user guess update chances -1
#          Loop asking for letters until chances = 0 or word is matched (word_arr == guessed)
#          Only uniq guesses count against user chances. Repeat guess dont effect chances
# Input
class Guess
  
	def initialize(word)
		@word = word.downcase!
		@word_arr = word.chars
		@spaces = ",_"* word.length
		@chances = word.length + 2
		#arrays for right and wrong guess to compare 
		wrong_guess = 0
		@guessed_right = []
	
	end

def set_up
  puts @spaces
end

def letter_compare(letter_guess)
  @guesses = ["#{letter_guess - 1}"]
  compare = @guesses == @word_arr

  if compare == false
    puts "Wrong, you have (#{@chances}) left."
  else
    puts congrats
  end
end


end


# driver code

puts "Player One: Please enter a word for Player Two to guess."
word = gets.chomp!
game = Guess.new("#{word}")
game.set_up

#until @guesses == @word_arr || @chances = 0
  puts "guess a letter"
  letter_guess =gets.chomp!
  game.letter_compare("#{letter_guess}")

