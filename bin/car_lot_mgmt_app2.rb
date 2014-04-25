require_relative '../lib/car_lot.rb'

# print  "What is the name of the Car Lot"
# company_name = gets.chomp
lot_name = "Honest Toms"

lot = CarLot.new(lot_name)

puts "lot  is #{lot.inspect}"

car_makes = %w{ Ford Toyota Chevy}
car_models = {
  "Ford" => %w{ Pinto Escort Mustang},
  "Toyota" => %w{ Camry Lexus Corolla RAV4 },
  "Chevy" => %w{ Silverado Nova Cruise }
}
models_msrp = {
  "Pinto": 4_000,
  "Escort": 15_000,
  "Mustang": 30_000,
  "Camry": 25_000,
  'Lexus': 30_000,
  'Corolla': 17_000,
  'RAV4': 19_000
}

55.times do |i|

  year = rand(1990..2013)
  make = car_makes.sample
  model = car_models[make].sample
  msrp[model]
  car = UsedCar(make, model, year, msrp, mileage)
  person.married = (rand(2) == 0 ? false : true)
  person.smoke_cigarettes = (rand(2) == 0 ? false : true)
  # puts "Person = #{person.inspect}"

  company.add_client(person) if person.is_insurable?

end

puts "Insurance Company #{company.name} has #{company.get_clients.length} clients."
puts "Insurance Company #{company.name} has #{company.get_smokers.length} smoking clients."

def show_help
  puts "showing help"
end

def update_user
  puts "updating user"
end

print "Enter Command: [h (help) | s(show clients) | ss(show smokers) || (update client) | ...]:  "
cmd = gets.chomp

case cmd
when 'h'
  show_help
when 's'
  info = company.get_clients.map do |client|
    "User Name: \"#{client.full_name}\", id: #{client.ins_id}"
  end
  puts info
when 'u'
  update_user
when 'ss'
  smokers = company.get_smokers
  smokers = company.get_smokers.map do |smoker|
     "User Name: \"#{smoker.full_name}\", id: #{smoker.ins_id}"
  end
  puts smokers
else
  show_help
end
