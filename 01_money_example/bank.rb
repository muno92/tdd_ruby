require_relative './money'

class Bank
  # @param [Expression] source Sum前提。キャストが出来ないのでコメントで補足。本来はExpressionならOKにすべき
  # @param [String] to
  def reduce(source, to)
    source.reduce(to)
  end
end
