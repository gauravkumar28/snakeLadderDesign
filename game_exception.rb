class GameException < Exception
  module ExceptionList
    LADDER_ALREADY_PRESENT = 'ladder_already_present'
    SNAKE_ALREADY_PRESENT = 'snake_already_present'
  end
  attr_accessible :name
  def initialize(name)
    @name = name
  end
end