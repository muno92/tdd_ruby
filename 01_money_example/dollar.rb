require_relative './money'

class Dollar < Money
  def initialize(amount)
    @amount = amount
    super
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end
end
