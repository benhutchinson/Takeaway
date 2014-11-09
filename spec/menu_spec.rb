require 'menu'

describe "Menu" do

  let(:indian_menu) { Menu.new}
  let(:vindaloo) { double :dish }

  it 'should be able to accept new dishes' do 
    indian_menu.add_dish(vindaloo)
    expect(indian_menu.dishes.count).to be 1
  end

  it 'should be able to remove dishes' do 
    indian_menu.add_dish(vindaloo)
    indian_menu.remove_dish(vindaloo)
    expect(indian_menu.dishes.count).to be 0
  end


end