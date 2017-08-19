class Game
  attr_accessor :board, :snake_map, :ladder_map, :player_list, :dice, :cur_player_idx
  def initialize(board, snake_map, ladder_map, dice)
    @board = board
    @snake_map = snake_map
    @ladder_map = ladder_map
    @dice = dice
  end

  def next_move(loc)
    dice_next_move = @dice.next_move
    nxt_loc = ((loc + dice_next_move ) < @board.size) ? (loc + dice_next_move ) : loc
    nxt_loc = snake_map.get(nxt_loc) unless snake_map.get(nxt_loc).nil?
    nxt_loc = ladder_map.get(nxt_loc) unless ladder_map.get(nxt_loc).nil?
    nxt_loc
  end

  def status
    {cur_player: @player_list[cur_player_idx].name, players: player_list}
  end
  
  def winner loc
    loc == @board.size - 1
  end

  def total_players
    @player_list.count
  end
end