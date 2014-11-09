require 'restaurant'

describe 'Restaurant' do 

  let(:english_raj) { Restaurant.new("English Raj") }
  let(:vegetarian) { double :menu }

  it 'should have a name' do 
    expect(english_raj.name).to eq "English Raj"
  end

  it 'should be able to add menus' do 
    english_raj.add_menu(vegetarian)
    expect(english_raj.menu_list.count).to be 1
  end

  it 'should be able to delete menus' do 
    english_raj.add_menu(vegetarian)
    english_raj.remove_menu(vegetarian)
    expect(english_raj.menu_list.count).to be 0
  end

end