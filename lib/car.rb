# has a make, model, and year of manufacture
# has an MSRP (original retail price)
# has a value (MSRP modified by depreciation, taking the year of manufacture into account)
# all cars have a constant depreciation of 5% per year
# has a manager markup
# has a price (value modified by the manager markup)
require 'date'

class Car

DEPRECIATION = 0.05

attr_reader :make, :model, :year, :sold

  def initialize (make, model, year, msrp, markup: 0)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @markup = markup
    @sold = false
  end

  def value
    current_value = @msrp
    (Date.today.year - @year).times do
      current_value -= current_value * DEPRECIATION
    end
    current_value
  end

  def price
    value + @markup
  end

  def sell
    @sold = true
  end

end

