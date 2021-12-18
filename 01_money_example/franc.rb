require_relative './money'

class Franc < Money
  # @param [Numeric] multiplier
  # @return [Franc]
  def times(multiplier)
    Franc.new(@amount * multiplier)
  end
end
