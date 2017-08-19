class Snake
  attr_accessible :snake_hash
  def initialize
    @snake_hash = {}
  end

  def put(from, to)
    raise GameException.new(GameException::ExceptionList::SNAKE_ALREADY_PRESENT) if @snake_hash[:from].present?
    snake_hash[from] =  to
    snake_hash
  end

  def get(loc)
    snake_hash[loc]
  end
end