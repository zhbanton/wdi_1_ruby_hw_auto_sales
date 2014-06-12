# has a make, model, and year of manufacture
# has an MSRP (original retail price)
# has a value (MSRP modified by depreciation, taking the year of manufacture into account)
# all cars have a constant depreciation of 5% per year
# has a manager markup
# has a price (value modified by the manager markup)
require 'date'

class Car

DEPRECIATION = 0.05

  def initialize (make, model, year, msrp, markup: 0)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @markup = markup
  end

  def purchase_price
    @msrp + @markup
  end

  def value
    current_value = purchase_price
    (Date.today.year - @year).times do
      current_value -= current_value * DEPRECIATION
    end
    current_value
  end

end

