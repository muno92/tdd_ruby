require_relative './money'

class Franc < Money
  # @param [Numeric] multiplier
  # @return [Money]
  def times(multiplier)
    Money.franc(@amount * multiplier)
  end

  def currency
    'CHF'
  end
end
