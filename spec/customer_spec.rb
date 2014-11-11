require 'customer'

describe 'Customer' do 

  let(:customer) { Customer.new(100000) }
  let(:vindaloo) { double :dish, :on_the_menu => true}
  let(:peking_duck) { double :dish, :on_the_menu => false}
  let(:english_raj) { double :restaurant, :signed_up_to_platform => true}
  let(:fiction_restaurant) { double :restaurant, :signed_up_to_platform => false }

  it "should be able to choose dishes (default quantity of 1)" do 
    customer.choose_dishes(vindaloo, english_raj, 2)
    expect(customer.dishes_to_order[vindaloo]).to be 2
  end

  it "should be able to finish choosing dishes" do 
    customer.ready_to_submit_order
    expect(customer.finished_choosing).to be true
  end

  it "should be able to choose a restaurant" do 
    customer.choose_restaurant(english_raj)
    expect(customer.order_restaurant).to be english_raj
  end

  it "should not be able to choose a restaurant that does not exist" do
    expect{customer.choose_restaurant(fiction_restaurant)}.to raise_error
  end

  it "should not be able to choose a dish if the restaurant does not sell it" do 
    customer.choose_restaurant(english_raj)
    expect{customer.choose_dishes(peking_duck, english_raj)}.to raise_error(DishNotOnMenu)
  end

end
