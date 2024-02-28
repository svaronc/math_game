class Question
  attr_reader :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end
  #method to print the question
  def prompt
    "What does #{@num1} plus #{@num2} equal?"
  end
  # method to compare the answers
  def correct_answer?(player_answer)
    player_answer == @answer
  end
end