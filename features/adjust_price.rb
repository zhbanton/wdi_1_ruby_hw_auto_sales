require 'pry'
require_relative '../lib/used_car'

car = UsedCar.new("Ford", "Escort", 2013, 10_000, 10_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Age Depreciation = #{car.age_depr}"
puts "Mileage Depreciation = #{car.mileage_depr}"
puts "Price = #{car.price} before adjustment"
adjustment = 500
puts "Adjust Price by #{adjustment}"
# binding.pry
car.adjustment = adjustment
puts "New Price is #{car.price}"

correct = (9_900 == car.price)
msg = "Price is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"

# Call price twice
correct = (9_900 == car.price)
msg = "Price is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"

car = UsedCar.new("Ford", "Escort", 2012, 10_000, 30_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Age Depreciation = #{car.age_depr}"
puts "Mileage Depreciation = #{car.mileage_depr}"
puts "Price = #{car.price} before adjustment"
adjustment = -700
puts "Adjust Price by #{adjustment}"
car.adjustment = adjustment


# 500 depr for year 1 (10k * .05), car value = 10K - 500 = 9500
# 475 depr for year 2 (9.5k * .05), car value = 10K - 975 = 9025
correct = (8025 == car.price)
msg = "Price is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"

car = UsedCar.new("Ford", "Model T", 1920, 1_000, 300_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Age Depreciation = #{car.age_depr}"
puts "Mileage Depreciation = #{car.mileage_depr}"
puts "Price = #{car.price}"
adjustment = -1700
puts "Adjust Price by #{adjustment}"
car.adjustment = adjustment
puts "Adjusted Price is #{car.price}"

correct = ( 0 == car.price)
msg = "Price is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"


adjustment = 125_000
puts "Adjust Price by #{adjustment}"
car.adjustment = adjustment
puts "Adjusted Price is #{car.price}"

correct = ( 125_000 == car.price)
msg = "Price is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"
