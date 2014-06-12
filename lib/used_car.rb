# has the same attributes as a new car
# has a mileage
# may have one or more damages (scuffed paint, missing hubcaps, etc.)
# has a value (same calculation as a new car, modified by mileage depreciation and the cost of all current damages)
# all used cars have a constant mileage depreciation of 1% per 10,000 miles (0.0001% per mile)

require_relative "car"

MILEAGE_DEPRECIATION_PERCENTAGE = 1
MILEAGE_DEPRECIATION_MILES = 10000
MILEAGE_DEPRECIATION = (MILEAGE_DEPRECIATION_PERCENTAGE.to_f / MILEAGE_DEPRECIATION_MILES)

class UsedCar < Car
  #def initialize (make, model, year, msrp, markup: 0)
  def initialize (make, model, year, msrp, mileage, damages, markup: 0)
    super (make, model, year, msrp, markup)
    @mileage = mileage
    @damages = damages
  end
end

