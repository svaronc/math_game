=begin
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.
=end

require_relative "game"
require_relative "player"
require_relative "question"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)
game.start
