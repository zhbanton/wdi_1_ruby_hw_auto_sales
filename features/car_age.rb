require_relative '../lib/car'

car = Car.new("Ford", "Escort", 2010)
puts "Created #{car.year} #{car.make} #{car.model}"
puts "It's #{car.age} years old"

car = Car.new("Toyota", "Lexus", 2005)
puts "Created #{car.year} #{car.make} #{car.model}"
puts "It's #{car.age} years old"
