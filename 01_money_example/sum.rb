require_relative './expression'

class Sum < Expression
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
    super
  end
end
