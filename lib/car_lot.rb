# has a name
# may have one or more cars
# can retrieve the "lot value" (total price of all cars on the lot)
# can retrieve a list of all cars matching a certain make, model, or year

# Add the ability to mark cars as "sold". A sold car no longer contributes to the "lot value", but does contribute to a new "lot revenue" property. Methods on the car lot should allow retrieving either unsold or sold cars. The transition from unsold to sold should be one-way.

# Add an auto-generated unique ID for each car that is 1 higher than the ID of the last car created (starting at 1 for the first car). You'll need to use a class variable for this.

require_relative 'used_car.rb'

class CarLot

  attr_reader :cars

  def initialize(name, cars)
    @name = name
    @cars = cars
  end

  def unsold
    @cars.find_all { |car| !car.sold }
  end

  def sold
    @cars.find_all { |car| car.sold }
  end

  def lot_value
    value = 0
    unsold.each { |car| value += car.value }
    value
  end

  def lot_revenue
    value = 0
    sold.each { |car| value += car.value }
    value
  end

  def find_by_all(make: nil, model: nil, year: nil, sold: :all)
    @cars.find_all { |car| (!make || car.make.casecmp(make) == 0) && (!model || car.model.casecmp(model) == 0) && (!year || car.year.to_s.casecmp(year) == 0) && (car.sold == sold || sold == :all) }
  end

  def find_by_any(make: nil, model: nil, year: nil, sold: :all)
    @cars.find_all { |car| ((!make || car.make.casecmp(make) == 0) || (!model || car.model.casecmp(model) == 0) || (!year || car.year.to_s.casecmp(year) == 0)) && (car.sold == sold || sold == :all) }
  end

end
