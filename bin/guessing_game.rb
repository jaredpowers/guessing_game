class Game
  def start
    puts "Welcome to the guessing game"
    random_number = rand(101)
    puts "You have 5 guesses"
    puts "Pick a number between 0-100"

    @attempts = 0

    until @attempts > 4 do
      guess = gets.chomp.to_i
      if guess < random_number
        puts "Too Low"
        @attempts+=1
      elsif guess > random_number
        puts "Too High"
        @attempts+=1
      elsif
        puts "YOU WINNNN!!"
        puts "Great choosing!!"
      end
    end


    puts "You ran out of turns"
    puts "Play again? (y) or (n)"
    play_again = gets.chomp
      if play_again == 'y'
        Game.new.start
      else
        puts "See you soon!"
      end
  end
end

game = Game.new
game.start
