require 'rails_helper'

RSpec.describe Customer, type: :model do

  it 'fails validation if no firstname is given' do
    customer = Customer.new(firstname: nil)
    customer.valid?
    expect(customer.errors.get(:firstname)).to include("can't be blank")
  end

end
