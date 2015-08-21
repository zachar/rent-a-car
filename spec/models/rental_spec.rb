require 'rails_helper'

RSpec.describe Rental, type: :model do
  describe ".finish" do

    it 'sets todays date as end of rental' do
      rental = Rental.new
      expect{ rental.finish }.to change{rental.finish_at}.from(nil).to(Date.today)
    end

    it 'sets total_cost of rental' do
      today = Date.new(2015, 7, 17)
      allow(Date).to receive(:today) { today }
      volvo = Car.create(cost_per_day: BigDecimal.new(60), model: 'Volvo')
      rental = Rental.new(car: volvo, start_at: Date.new(2015, 7, 3))
      expect{ rental.finish }.to change{rental.total_cost}.from(nil).to(BigDecimal.new(600))
    end

    it 'sets total_cost of rental when customer brought back car in the same day' do
      today = Date.new(2015, 7, 17)
      allow(Date).to receive(:today) { today }
      car = Car.new(cost_per_day: 60.00)
      rental = Rental.new(car: car, start_at: today)
      expect{ rental.finish }.to change{rental.total_cost}.from(nil).to(60.0)
    end    

  end
end
