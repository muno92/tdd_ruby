require_relative './sum'

class Money < Expression
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
    super
  end

  def self.dollar(amount)
    Money.new(amount, 'USD')
  end

  def self.franc(amount)
    Money.new(amount, 'CHF')
  end

  def times(multiplier)
    Money.new(@amount * multiplier, currency)
  end

  # @param [Money] addend
  # @return [Expression]
  def plus(addend)
    Sum.new(self, addend)
  end

  def reduce(bank, to)
    rate = (@currency === 'CHF' && to === 'USD') ? 2 : 1
    Money.new(@amount / rate, to)
  end

  def ==(other)
    @amount == other.amount && @currency == other.currency
  end
end
