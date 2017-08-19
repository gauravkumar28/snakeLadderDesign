# DICE CLASS TO RETURN NEXT RANDOM MOVE FOR ANY PLAYER
class Dice
  attr_accessor :face
  def initialize(face=nil)
    @face = face || 6
  end

  def next_move
    1 + rand(@face)
  end

  def face
    @face
  end
end