class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_index = 0
  end

  def start
    # Game loop until a player loses all lives
    until game_over?
      current_player = @players[@current_player_index]
      question = Question.new
      puts " #{current_player.name}: #{question.prompt}"
      answer = gets.chomp.to_i
      
      if question.correct_answer?(answer)
        puts "Correct! Well done, #{current_player.name}."
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[-1].lives}/3"

      else
        current_player.lose_life
        puts "Oops! That's not right, #{current_player.name}."
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[-1].lives}/3"
      end
      
      break if game_over?
      switch_turns
    end
    display_winner
  end

  private
  #method to switch turns
  def switch_turns
    @current_player_index = (@current_player_index + 1) % @players.size
    puts "Switching turns..."
  end
  #method to know the game is over 
  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end
  #method to display the winner
  def display_winner
    winner = @players.find { |player| player.lives > 0 }
    puts "#{winner.name} wins the game with #{winner.lives} lives remaining!"
  end
end