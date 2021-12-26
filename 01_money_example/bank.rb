require_relative './money'
require_relative './pair'

class Bank
  attr_reader :rates

  def initialize
    @rates = {}
  end

  # @param [Expression] source Sum前提。キャストが出来ないのでコメントで補足。本来はExpressionならOKにすべき
  # @param [String] to
  def reduce(source, to)
    source.reduce(self, to)
  end

  def add_rate(from, to, rate)
    @rates[Pair.new(from, to)] = rate
  end

  def rate(from, to)
    if from == to
      return 1
    end
    @rates[Pair.new(from, to)]
  end
end
