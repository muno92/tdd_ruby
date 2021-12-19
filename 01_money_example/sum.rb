require_relative './expression'
require_relative './money'

class Sum < Expression
  attr_reader :augend, :addend

  # @param [Money] augend
  # @param [Money] addend
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
    super
  end

  def reduce(bank, to)
    amount = @augend.amount + @addend.amount
    Money.new(amount, to)
  end
end
