require_relative './money'

class Franc < Money
  # @param [Numeric] multiplier
  # @return [Money]
  def times(multiplier)
    Franc.new(@amount * multiplier)
  end
end
