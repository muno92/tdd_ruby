class Pair
  attr_reader :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def eql?(other)
    if other.instance_of?(Pair)
      return @from == other.from && @to == other.to
    end
    false
  end

  def hash
    0
  end
end
