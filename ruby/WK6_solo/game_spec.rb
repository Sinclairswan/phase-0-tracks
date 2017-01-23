require_relative '6_6 game'

describe Word_guess do

  let (:word_guess) {Word_guess.new}

  it "takes a string and returns blanks based on the number of letters in the string" do
    expect(word_guess.answer("cat")).to eq "_ _ _ " 
  end

  it " returns an array" do
    expect(word_guess.guesses("a")).to be_a(Array)
  end

   it "prints 'you win' "do
	expect (word_guess.win_lose).to be_a(String)
   end


end