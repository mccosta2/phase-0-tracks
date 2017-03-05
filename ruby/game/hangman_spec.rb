require_relative 'hangman'

describe Hangman_Game do
  let(:game) { Hangman_Game.new("guess") }

  it "stores the word given on initialization" do
    expect(game.get_word).to eq "guess"
  end

  it "takes and checks a guess letter" do
    game.guess("s")
    expect(game.show).to eq "_ _ _ s s "
  end

  it "displays the hidden word" do
    expect(game.show).to eq "_ _ _ _ _ "
  end

end