class Money
  attr_reader :amount

  def initialize(amount)
  end

  def ==(other)
    @amount == other.amount
  end
end
