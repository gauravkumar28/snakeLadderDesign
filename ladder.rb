class Ladder
  attr_accessible :ladder_hash
  def initialize
    @ladder_hash = {}
  end

  def put(from, to)
    raise GameException.new(GameException::ExceptionList::LADDER_ALREADY_PRESENT) if @ladder_hash[:from].present?
    ladder_hash[from] =  to
    ladder_hash
  end

  def get(loc)
    ladder_hash[loc]
  end
end