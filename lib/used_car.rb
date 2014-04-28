require_relative 'car'

class UsedCar < Car

  # Depreciation per 10K miles
  MILEAGE_DEPR_RATIO = 0.01

  # Percent of price  the car depreciates in one year.
  YRLY_DEPR_RATIO = 0.05

  attr_reader :msrp, :mileage
  attr_accessor :adjustment

  def initialize(make, model, year, msrp, mileage)
    super(make, model, year)
    @price = @msrp = msrp
    @mileage = mileage
    @adjustment = 0
  end

  def price
    new_price = (msrp - age_depr - mileage_depr + adjustment).round
    new_price = 0 if new_price < 0
    new_price
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

  # def adjust_price(adjustment)
  #   price = @price = adjustment
  #   self.price = 0 if @price < 0
  #   self.price
  # end
end
