# has the same attributes as a new car
# has a mileage
# may have one or more damages (scuffed paint, missing hubcaps, etc.)
# has a value (same calculation as a new car, modified by mileage depreciation and the cost of all current damages)
# all used cars have a constant mileage depreciation of 1% per 10,000 miles (0.0001% per mile)

require_relative 'car.rb'
require_relative 'damage.rb'

MILEAGE_DEPRECIATION_PERCENTAGE = 1
MILEAGE_DEPRECIATION_MILES = 10000
MILEAGE_DEPRECIATION = (MILEAGE_DEPRECIATION_PERCENTAGE.to_f / MILEAGE_DEPRECIATION_MILES)

class UsedCar < Car

  def initialize (make, model, year, msrp, mileage, damages: nil, markup: 0)
    super(make, model, year, msrp, markup: markup)
    @mileage = mileage
    @damages = damages
  end

  def value
    damage_cost = 0
    @damages.each { |damage| damage_cost += damage.cost } if @damages != nil
    super - (MILEAGE_DEPRECIATION * @mileage) - damage_cost
  end
end

