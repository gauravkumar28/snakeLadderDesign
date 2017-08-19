class GameController
  attr_accessible :game
  def initialize(game)
    @game =  game
  end
   
  def start
    toss
    set_player_loc
  end
  
  def end

  end

  def play
    while true 
      cur_player = game.player_list[game.cur_player_idx]
      cur_loc = cur_player.cur_loc
      next_move = game.next_move(cur_loc)
      break if(game.winner(next_move))
      game.cur_player_idx = (game.cur_player_idx + 1) % (game.totel_players)

    end
    puts "#{cur_player.name} won the game"
  end
  
  private 

  def toss
    totel_players = game.totel_players
    game.cur_player = rand(totel_players)
    puts "#{game.cur_player} won the toss"
  end

  def set_player_loc
    game.player_list.each do |player|
      player.cur_loc = 0
    end
  end
end