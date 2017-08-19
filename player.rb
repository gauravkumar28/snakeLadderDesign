class Player
  attr_accessor :name, :cur_loc
  def initialize(name)
    @name =  name
    @cur_loc = 0
  end
end