require 'rspec'
require_relative './dollar'
require_relative './franc'

RSpec.describe Dollar do
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

  it 'franc multiplication' do
    five = Money.franc(5)
    expect(five.times(2)).to eq Money.franc(10)
    expect(five.times(3)).to eq Money.franc(15)
  end
end
