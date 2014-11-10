require 'order'
require 'exceptions'

describe 'OrderAggregator' do

let(:order) { OrderAggregator.new }
let(:customer) { double :customer, :order_restaurant => :english_raj}

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

  it "should know which restaurant an order is for" do 
    order.which_restaurant_is_order_for(customer)
    expect(order.restaurant).to eq :english_raj
  end

  # it "should recognise all the dishes that make up the order" do 
    
  # end

end 
