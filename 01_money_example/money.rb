class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def ==(other)
    @amount == other.amount && other.is_a?(self.class)
  end
end
