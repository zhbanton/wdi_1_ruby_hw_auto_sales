require_relative ("../lib/used_car.rb")

my_car = UsedCar.new("Toyota", "Highlander", 2006, 35000, 100050, [Damage.new("Fender Bender", 500), Damage.new("Scuffed Hubcap", 500)], markup: 100)

puts my_car.inspect

puts my_car.value

puts my_car.price
