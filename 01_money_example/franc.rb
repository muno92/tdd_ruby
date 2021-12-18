require_relative './money'

class Franc < Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
    super
  end

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end
end
