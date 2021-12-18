class Money
  attr_reader :amount

  def initialize(amount)
  end

  def ==(other)
    @amount == other.amount && self.class == other.class
  end
end
