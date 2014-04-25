require_relative 'used_car'


class CarLot
  attr_reader :name

  def initialize(name)
    @name = name
    @cars = [ ]
  end

  def add_car(car)
    @cars << car
  end

  def get_cars
    @cars
  end
end
