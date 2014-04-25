require_relative '../lib/used_car'

car = UsedCar.new("Ford", "Escort", 2010, 15_000, 30_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"

car = UsedCar.new("Toyota", "Lexus", 2005, 25_000, 100_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
