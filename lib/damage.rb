# has a description
# has a cost (how much it would cost to repair)

class Damage

  attr_reader :cost

  def initialize (description, cost)
    @description = description
    @cost = cost
  end
end
