require_relative '../lib/car_lot'

lot = CarLot.new("Honest Toms")
puts "lot name is #{lot.name}"

car = UsedCar.new("Ford", "Escort", 2010, 15_000, 30_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
lot.add_car(car)


car = UsedCar.new("Toyota", "Lexus", 2005, 25_000, 100_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
lot.add_car(car)

puts "=" * 30
puts "Used Cars in lot are:"
puts "#{lot.get_cars.join("\n")}"
