# create a class for each game

class Hangman_Game
# make variables readable
attr_reader :game_over, :guess_count, :word

# on intialization set flags for game over, count and word 
# if no word is provided select from a default?
	def initialize(secret_word = "dog")
		@word = secret_word
		@guess_count = @word.length
		@game_over = false
		@guesses = []
	end

	def get_word()
		secretword = @word
		secretword
	end
#creaate a method for returning the "hidden" array
	def show()
		show_array = []
		counter = 0
		@word.split('').map do |e| 
		if @guesses.include?(e)
			show_array << e+' '
			counter += 1
		else
			show_array << '_ '
		end
		end

		if counter == @word.length
			@game_over = true
			puts show_array.join
			puts "You win, congrats!!"
			exit
		end
		show_array.join
	end
#create method for guesses
#be sure to increment

	def guess(letter)
		@guesses << letter
		@guess_count = @guess_count -1
		if @guess_count == 0
			@game_over = true
		end
	end


end

#user interface
# ask for a word to start the game
# prompt new user with blank word and count of guesses left
# ask for guess
# run guess through guess method and show method
# return new word and new work count

puts "Welcome Player One, please enter your secret word"
new_secret_word = gets.chomp
game = Hangman_Game.new(new_secret_word)



puts "Hello Player Two, let's play Hangman!"
while (!game.game_over && @game_count != 0) do
puts "your secret word looks like #{game.show}"
puts "you have #{game.guess_count} guesses left"
puts "Please enter your next letter guess"
next_guess = gets.chomp
game.guess(next_guess)
end
puts "sorry, you lose, hahaha. the word was #{game.word}"
