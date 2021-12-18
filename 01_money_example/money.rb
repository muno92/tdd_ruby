class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def times(multiplier)
  end

  def ==(other)
    @amount == other.amount && other.is_a?(self.class)
  end
end
