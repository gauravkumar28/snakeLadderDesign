class Player
  attr_accessible :name, :cur_loc
  def initialize(name)
    @name =  name
    @cur_loc = 0
  end
end