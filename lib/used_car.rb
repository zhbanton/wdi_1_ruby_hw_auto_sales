require_relative 'car'

class UsedCar < Car

  # Depreciation per 10K miles
  MILEAGE_DEPR_RATIO = 0.01

  # Percent of price  the car depreciates in one year.
  DEPR_RATIO = 0.05

  attr_reader :msrp, :mileage

  def initialize(make, model, year, msrp, mileage)
    super(make, model, year)
    @price = @msrp = msrp
    @mileage = mileage
  end

  def depreciation
    msrp - price
  end

  def price
    current_price = @price
    age.times do
      current_price -= current_price*DEPR_RATIO
    end

    current_price -= current_price*mileage_cost
    current_price
  end

  def mileage_cost
    mileage/10_000*MILEAGE_DEPR_RATIO
  end
end
