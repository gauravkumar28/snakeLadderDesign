class GameController
  attr_accessor :game
  def initialize(game)
    @game =  game
  end
   
  def start
    toss
    set_player_loc
  end
  
  def close
  end

  def play
    while true 
      cur_player = game.player_list[game.cur_player_idx]
      cur_loc = cur_player.cur_loc
      next_move = game.next_move(cur_loc)
      break if(game.winner(next_move))
      cur_player.cur_loc = next_move
      puts "#{cur_player.name} moved from #{cur_loc} to #{cur_player.cur_loc}"
      game.cur_player_idx = (game.cur_player_idx + 1) % (game.total_players)
      #puts game.status
    end
    puts "#{cur_player.name} won the game"
    close
  end
  
  private 

  def toss
    total_players = game.total_players
    game.cur_player_idx = rand(total_players)
    puts "#{game.cur_player_idx} won the toss"
  end

  def set_player_loc
    game.player_list.each do |player|
      player.cur_loc = 0
    end
  end
end