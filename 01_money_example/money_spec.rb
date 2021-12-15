require 'rspec'
require_relative './dollar'

RSpec.describe Dollar do
  it 'multiplication' do
    five = Dollar.new(5)
    five.times(5)
    expect(five.amount).to eq 10
  end
end
