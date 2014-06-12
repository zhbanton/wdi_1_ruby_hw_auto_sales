require_relative "../lib/car.rb"

my_car = Car.new("Toyota", "Highlander", 2006, 35000, markup: 100)

puts my_car.inspect

puts my_car.purchase_price

puts my_car.value
