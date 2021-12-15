require 'rspec'
require_relative './dollar'

RSpec.describe Dollar do
  it 'multiplication' do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq 10
    product = five.times(3)
    expect(product.amount).to eq 15
  end

  it 'equality' do
    expect(Dollar.new(5)).to eq Dollar.new(5)
    expect(Dollar.new(5)).not_to eq Dollar.new(6)
  end
end
