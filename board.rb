#GAME BOARD FOR PLAY 
# SIZE TELLS BOARD SIZE 100 means 10 by 10
class Board
	attr_accessor :size
  def initialize(size=nil)
  	size ||= 10
  	@size = size * size
  end

  def size
  	@size
  end
end