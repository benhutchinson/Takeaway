require 'customer'

describe 'Customer' do 

  let(:customer) { Customer.new }
  let(:vindaloo) { double :dish}

  it "should be able to choose dishes (default quantity of 1)" do 
    customer.choose_dishes(vindaloo, 2)
    expect(customer.dishes_to_order[vindaloo]).to be 2
  end

  it "should be able to finish choosing dishes" do 
    customer.ready_to_submit_order
    expect(customer.finished_choosing).to be true
  end

end
