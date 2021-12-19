require_relative './money'

class Bank
  # @param [Expression] source Sum前提。キャストが出来ないのでコメントで補足。本来はExpressionならOKにすべき
  # @param [String] to
  def reduce(source, to)
    source.reduce(self, to)
  end

  def add_rate(from, to, rate)
  end

  def rate(from, to)
    from == 'CHF' && to == 'USD' ? 2 : 1
  end
end
