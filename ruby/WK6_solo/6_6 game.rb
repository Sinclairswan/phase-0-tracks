=begin
 One user can enter a word (or phrase, if you would like your game to support that),
 and another user attempts to guess the word.
 Guesses are limited, 
 and the number of guesses available is related to the length of the word.
Repeated guesses do not count against the user.
The guessing player receives continual feedback on the current state of the word.
So if the secret word is "unicorn", 
the user will start out seeing something like "_ _ _ _ _ _ _", 
which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
The user should get a congratulatory message if they win, 
and a taunting message if they lose.

Psedocode------------
Create a class that takes a string as a parameter
Splits word in to characters
Return the length of the string in "_" to stand for each letter
Give the user guess that are 3 more than the number of characters in the string
countdown each guess as the use attemps to guess the word
-1 guess if guess correct or guessed wrong
no change in number of guesses if previously guesssed
Store good and all guesses in an array 
compare new guesses to previous guess so that they do not count against old trys
Let the user know if the guess is correct by replacing the blank with the correct letter.
When user is out of guesses and has not solved the word  print 'Game over' 
When user has guess all of the correct letters print "congratulations"

Intialize method 
Input: string
stores word in array of characters 
return: p string.length in "_"'s and number of guesses string.length + 3

guess count
input: string
stores guess in array, if guess matches word array return "_" string with letter replaced
else return guess count - 1
return: string (guess count or updated "_ " with letters)

match method
input: single character string 
if guess matches word array return "_" string with letter replaced
match




game_over method 
compares array of answer to array of  good guesses
when guess == 0 && word doesn't match guessed word  print game over
when word == guessed word  print congratulations
return string

=end

class Word_guess
	attr_reader :count,:word

	def initialize
		@guesses =[]
		@blank = []
		@good_guesses = []
    end
    
    def answer(word)
    	@word = word
		@correct = @word.split('')
    	@hidden_word = "_ " * @word.length
    	puts " Your word to guess is #{@hidden_word}"
		  @hidden_word
	end

	def chances
    	 @chances = @word.length + 2
    	 puts "You have #{@chances} guesses total"
    	 @count
    end

    def guesses(letter)
      @letter = letter
    	@guesses << @letter
    	 @blank = @hidden_word.downcase.split(" ")
    	  @guesses
    end
    	
    def chance_status
     	@count_status = @chances - @guesses.uniq.length
    	 p "You have #{@count_status} guesses left"
    	  @count_status
    	
    end
    
    def matching
    @good_guesses = @guesses & @correct

    index = @good_guesses.map{ |i| @correct.index(i)} 
    
    x = index.sort
    x.each {|i|p @blank.insert(i,@correct[i])}
   
  	p @blank
    end 
    
    def win_lose
     	 if @good_guesses.length == @word.length
     	   p "You Win!"
     	 elsif @count_status == 0
     	 p "You lose"
     	 else
     	   p "keep trying"
     	 end
    end
end
x=Word_guess.new
x.answer("monkey")
x.chances

 x.guesses("m")
 x.guesses("k")
 x.guesses("n")
 x.guesses("o")
 x.guesses("e")
 x.guesses("g")
 x.guesses("u")
 x.guesses("y")
 

x.chance_status
x.matching
x.win_lose











#if (@guesses - @correct).empty?




