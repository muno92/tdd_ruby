require 'rspec'
require_relative './dollar'

RSpec.describe Dollar do
  it 'multiplication' do
    five = Dollar.new(5)
    expect(five.times(2)).to eq Dollar.new(10)
    expect(five.times(3)).to eq Dollar.new(15)
  end

  it 'equality' do
    expect(Dollar.new(5)).to eq Dollar.new(5)
    expect(Dollar.new(5)).not_to eq Dollar.new(6)
  end
end
