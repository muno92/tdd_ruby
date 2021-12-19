require 'rspec'
require_relative './bank'
require_relative './money'

RSpec.describe Money do
  it 'multiplication' do
    five = Money.dollar(5)
    expect(five.times(2)).to eq Money.dollar(10)
    expect(five.times(3)).to eq Money.dollar(15)
  end

  it 'equality' do
    expect(Money.dollar(5)).to eq Money.dollar(5)
    expect(Money.dollar(5)).not_to eq Money.dollar(6)
    expect(Money.franc(5)).to eq Money.franc(5)
    expect(Money.franc(5)).not_to eq Money.franc(6)
    expect(Money.franc(5)).not_to eq Money.dollar(5)
  end

  it 'currency' do
    expect(Money.dollar(1).currency).to eq 'USD'
    expect(Money.franc(1).currency).to eq 'CHF'
  end

  it 'should check currency, not class' do
    expect(Money.new(10, 'CHF')).not_to eq Money.new(10, 'USD')
  end

  it 'simple addition' do
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum, 'USD')
    expect(reduced).to eq Money.dollar(10)
  end

  it 'plus should return sum' do
    five = Money.dollar(5)
    result = five.plus(five)
    expect(result.augend).to eq(five)
    expect(result.addend).to eq(five)
  end
end
