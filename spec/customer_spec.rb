require 'customer'

describe 'A Customer' do 

  let (:customer) { Customer.new(100000) }
  let (:vindaloo) { double :dish}
  let (:peking_duck) { double :dish}
  let (:english_raj) { double :restaurant, :signed_up_to_platform => true, :has_menu? => true, :menu => ['tikka']}
  let (:fiction_restaurant) { double :restaurant, :signed_up_to_platform => false, :has_menu? => false}
  let (:no_menu_restaurant) { double :restaurant, :signed_up_to_platform => true, :has_menu? => false}

  context 'having chosen a restaurant,' do 
    before :each do 
      customer.choose_restaurant(english_raj)
    end

    it "should be able to choose dishes (default quantity of 1)" do 
      customer.choose_dishes('tikka', english_raj, 2)
      expect(customer.dishes_to_order['tikka']).to be 2
    end

    it "should not be able to choose a dish if the restaurant does not sell it" do 
      expect{customer.choose_dishes(peking_duck, english_raj)}.to raise_error(DishNotOnMenu)
    end
  end

  it "must choose a restaurant before they choose a dish" do 
    customer.order_restaurant = nil
    expect{customer.choose_dishes(vindaloo, english_raj, 3)}.to raise_error(PleaseChooseRestaurantFirst)
  end

  it "should not be able to choose a restaurant that does not exist" do
    expect{customer.choose_restaurant(fiction_restaurant)}.to raise_error
  end

  it "should not be able to choose a restaurant without a menu" do  
    expect{customer.choose_restaurant(no_menu_restaurant)}.to raise_error(HasNoMenu)
  end

  it "should be able to finish choosing dishes" do 
    customer.ready_to_submit_order
    expect(customer.finished_choosing).to be true
  end

end
