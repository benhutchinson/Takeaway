require 'restaurant'

describe 'Restaurant' do 

  let (:english_raj) { Restaurant.new("English Raj") }
  let (:tikka) { double :dish }
  let (:order) { double :order, :dishes_to_fulfil => :vindaloo}
  let (:vindaloo) { double :dish }

  it 'should have a name' do 
    expect(english_raj.name).to eq "English Raj"
  end

  it 'should be able to add a dish to its menu' do 
    english_raj.add_dish_to_menu(tikka)
    expect(english_raj.menu.count).to be 1
  end

  it 'should be able to delete a dish from the menu' do 
    english_raj.add_dish_to_menu(tikka)
    english_raj.remove_dish_from_menu(tikka)
    expect(english_raj.menu.count).to be 0
  end

  it 'should be able to accept an order' do
    order.dishes_to_fulfil
    english_raj.accept_order(order)
    expect(english_raj.order_to_prepare).to eq [:vindaloo]
  end

end