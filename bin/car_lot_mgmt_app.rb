require_relative '../lib/car_lot.rb'

# print  "What is the name of the Car Lot"
# company_name = gets.chomp
lot_name = "Honest Toms"

lot = CarLot.new(lot_name)

puts "lot  is #{lot.name}"

car_makes = %w{ Ford Toyota Chevy}
car_models = {
  "Ford" => %w{ Pinto Escort Mustang},
  "Toyota" => %w{ Camry Lexus Corolla RAV4 },
  "Chevy" => %w{ Silverado Nova Cruise }
}
models_msrp = {
  "Pinto" => 4_000,
  "Escort" => 15_000,
  "Mustang" => 30_000,
  "Camry" => 25_000,
  'Lexus' => 30_000,
  'Corolla' => 17_000,
  'RAV4' => 19_000
}

55.times do |i|

  year = rand(1990..2013)
  make = car_makes.sample
  model = car_models[make].sample
  msrp = models_msrp[model]
  mileage = (500..40_000)
  car = UsedCar.new(make, model, year, msrp, mileage )
  lot.add_car(car) 

end

puts "Car Lot has #{lot.get_cars.length} cars"

