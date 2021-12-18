require_relative './money'

class Franc < Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
    super
  end

  # @param [Numeric] multiplier
  # @return [Franc]
  def times(multiplier)
    Franc.new(@amount * multiplier)
  end
end
