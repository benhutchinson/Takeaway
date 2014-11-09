require 'order'

describe 'OrderAggregator' do

let(:order) { OrderAggregator.new }
let(:customer) { double :customer }

  it "should be able to add up the price of the total order" do 
    expect(order.total_price).to be nil
    order.price_quantity_array = [100,300]
    expect(order.create_the_basket_total(customer)).to be 400
  end

end 
