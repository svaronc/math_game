
class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  #method to rest a life
  def lose_life
    @lives -= 1
  end
end
