Dir[File.dirname(__FILE__) + "/*.rb"].each do |file|
  require file
end

module SnakeLadderTest
  class << self
    def setup
      puts "started"
      board = Board.new()
      snake_map = SnakeMap.new
      ladder_map = LadderMap.new
      dice = Dice.new()
      playerA = Player.new("A")
      playerB = Player.new("B")
      playerC = Player.new("C")
      player_list = [playerA, playerB, playerC]
      game = Game.new(board, snake_map, ladder_map, dice)
      game.player_list = player_list
      game_controller = GameController.new(game)

      game_controller.start
      game_controller.play
    end
  end
end