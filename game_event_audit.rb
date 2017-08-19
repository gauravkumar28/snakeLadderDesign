# GAME EVENT CLASS TO CAPTURE ALL GAME EVENTS 
class GameEventAudit

  # module EVENT_LIST
  #   START = 'start'
  #   MOVE = 'move X-Y'
  #   FINISH = 'finish'
  # end

  # module SURPRISE
  #   SNAKE='snake'
  #   LADER='lader'
  # end

  attr_accessible :events
  def initialize
    @events = []
  end

  def add(move, player=nil, surprise=nil)
    @events << {move: move, player: player, surprise: surprise}
  end

  def display
    @events.each do | event | 
      puts "#{event[:move]}, #{event[:player]}, #{ event[:surprise]}"
    end
  end


end