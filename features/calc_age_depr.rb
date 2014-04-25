require_relative '../lib/used_car'

car = UsedCar.new("Ford", "Escort", 2013, 10_000, 10_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Age Depreciation = #{car.age_depr}"

correct = (500 == car.age_depr)
msg = "Depreciation is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"

car = UsedCar.new("Ford", "Escort", 2012, 10_000, 30_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Age Depreciation = #{car.age_depr}"

# 500 depr for year 1 (10k * .05), car value = 10K - 500 = 9500
# 475 depr for year 2 (9.5k * .05), car value = 10K - 975 = 9025
correct = (975.0 == car.age_depr)
msg = "Depreciation is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"

car = UsedCar.new("Ford", "Model T", 1920, 1_000, 300_000)
puts "Created Used Car #{car.year} #{car.make} #{car.model}"
puts "mileage is #{car.mileage}"
puts "MSRP is #{car.msrp}"
puts "Age Depreciation = #{car.age_depr}"

correct = ( 992 == car.age_depr)
msg = "Depreciation is " + (correct ? "CORRECT" : "WRONG")
puts "#{msg}\n\n"
