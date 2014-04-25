require_relative 'car'

class UsedCar < Car

  # Depreciation per 10K miles
  MILEAGE_DEPR_RATIO = 0.01

  # Percent of price  the car depreciates in one year.
  YRLY_DEPR_RATIO = 0.05

  attr_reader :msrp, :mileage

  def initialize(make, model, year, msrp, mileage)
    super(make, model, year)
    @price = @msrp = msrp
    @mileage = mileage
  end

  def price
    (msrp - age_depr - mileage_depr).round
  end

  def age_depr
    age_cost = @price
    calc_price = @price
    age.times do
      calc_price -= (calc_price * YRLY_DEPR_RATIO)
    end
    (@price - calc_price).round
  end

  def mileage_depr
    depr = @price * ((mileage/10_000)  * MILEAGE_DEPR_RATIO)
  end
end
