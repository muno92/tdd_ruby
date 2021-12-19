class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
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
  # @return [Money]
  def plus(addend)
    Money.new(amount + addend.amount, currency)
  end

  def ==(other)
    @amount == other.amount && @currency == other.currency
  end
end
