require_relative '../lib/car_lot.rb'

# print  "What is the name of the Car Lot"
# company_name = gets.chomp
lot_name = "Honest Toms"

lot = CarLot.new(lot_name)

puts "lot  is #{lot.inspect}"
# make, model, year, msrp, mileage)
car = UsedCar.new("Ford", "Mustang",2010, 30_000, 50_000)
lot.add_car(car)
puts "Added car #{car.year}  #{car.model} to the lot"

car = UsedCar.new("Toyota", "Camry",2009, 20_000, 100_000)
lot.add_car(car)
puts "Added car #{car.year}  #{car.model} to the lot"

car = UsedCar.new("Toyota", "Lexus",2012, 35_000, 10_000)
lot.add_car(car)
puts "Added car #{car.year}  #{car.model} to the lot"

car = UsedCar.new("Ford", "F150",2010, 25_000, 60_000)
lot.add_car(car)
puts "Added car #{car.year}  #{car.model} to the lot"

exit
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
