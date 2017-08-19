class Game
  attr_accessible :board, :snake, :ladder, :player_list, :dice, :cur_player_idx
  def initialze(board, snake, lader, dice)
    @board = board
    @snake = snake
    @lader = lader
    @dice = dice
  end

  def next_move(loc)
  	nxt_loc = ((loc + @dice.next_move ) <= @board.size) ? (loc + @dice.next_move ) : 0
  	nxt_loc = snake.get(nxt_loc) if snake.get(nxt_loc).present?
  	nxt_loc = ladder.get(nxt_loc) if ladder.get(nxt_loc).present?
  	nxt_loc
  end

  def status
    {cur_player: @player_list[cur_player_idx].name, players: player_list}
  end
  
  def winner loc
  	loc == @board.size - 1
  end

  def total_player
  	@player_list.count
  end
end