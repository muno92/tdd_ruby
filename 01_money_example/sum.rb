require_relative './expression'
require_relative './money'

class Sum < Expression
  attr_reader :augend, :addend

  # @param [Expression] augend
  # @param [Expression] addend
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
    super
  end

  def plus(addend)
    Sum.new(self , addend)
  end

  def times(multiplier)
    Sum.new(@augend.times(multiplier), @addend.times(multiplier))
  end

  def reduce(bank, to)
    amount = @augend.reduce(bank, to).amount + addend.reduce(bank, to).amount
    Money.new(amount, to)
  end
end
