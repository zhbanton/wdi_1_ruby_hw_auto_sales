require_relative "../lib/car_lot.rb"

cars = [ UsedCar.new("Toyota", "Highlander", 2006, 35000, 100050, damages: [Damage.new("Fender Bender", 500), Damage.new("Scuffed Hubcap", 500)], markup: 100),
         UsedCar.new("Honda", "CRV", 2003, 25000, 81050),
         UsedCar.new("Toyota", "Corolla", 2006, 35000, 100050, damages: [Damage.new("Scuffed Hubcap", 500)], markup: 300),
         Car.new("Kia", "Optima", 2014, 16000, markup: -100),
         Car.new("BMW", "M5", 2013, 55000),
         Car.new("Porsche", "Panamera", 2012, 95000, markup: 100) ]

lot = CarLot.new("Zack's Lot", cars)

puts lot.inspect
lot.cars[0].sell
puts
puts lot.sold
puts
puts lot.unsold
puts
puts lot.lot_value
puts
puts lot.lot_revenue
puts
puts lot.find_by_all(make: "Toyota", sold: true).inspect
puts
puts lot.find_by_any(make: "Toyota", model: "Crv", year: "2012", sold: false).inspect
puts
new_car = Car.new("Porsche", "Panamera", 2012, 95080, markup: 100)
puts new_car.inspect
