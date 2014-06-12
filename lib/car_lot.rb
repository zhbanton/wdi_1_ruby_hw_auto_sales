# has a name
# may have one or more cars
# can retrieve the "lot value" (total price of all cars on the lot)
# can retrieve a list of all cars matching a certain make, model, or year

require_relative 'used_car.rb'

class CarLot

  def initialize(name, cars)
    @name = name
    @cars = cars
  end

  def lot_value
    value = 0
    @cars.each { |car| value += car.price }
    value
  end

end
