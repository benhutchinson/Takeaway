require 'order'
require 'exceptions'

describe 'OrderAggregator' do

let(:order) { OrderAggregator.new }
let(:customer) { double :customer }

  it "should be able to add up the price of the total order" do 
    expect(order.total_price).to be nil
    order.price_quantity_array = [100,300]
    expect(order.create_the_basket_total(customer)).to be 400
  end

  it "should be able to check if the customer can afford it" do 
    poor_customer = Customer.new(100)
    order.total_price = 200
    expect{order.can_customer_afford?(poor_customer)}.to raise_error(InsufficientFunds)
  end

end 
