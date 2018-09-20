require 'game'

class Player

  attr_reader :name, :hp
  INITIAL_SCORE = 100

  def initialize(name, hp = INITIAL_SCORE)
    @name = name
    @hp = hp
  end

  def is_attacked
    @hp -= 10
  end

end
