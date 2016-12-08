require_relative 'word_guess'

describe Guess do
	let(:guess) { Guess.new("word") }

	it "takes word from user" do
		expect(guess.new).to eq "Please enter a word"
	end

	it "transforms word length in to number of guesses" do
		guess.length = 4
		expect(guess.length).to eq "You have 4 guesses "
	end




end
