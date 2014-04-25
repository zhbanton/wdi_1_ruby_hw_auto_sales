require_relative '../lib/used_car'

# make, model, year, msrp, mileage
car = UsedCar.new("Ford", "Escort", 2010, 30_000, 10_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Mileage Depreciation = #{car.mileage_depr}"

correct = (300 == car.mileage_depr)
msg = "Deprection is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"

car = UsedCar.new("Toyota", "Lexus", 2005, 25_000, 100_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Mileage Depreciation = #{car.mileage_depr}"

correct = (2_500 == car.mileage_depr)
msg = "Deprection is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"
