require 'dishes'

describe Dishes do 

let (:vindaloo) { Dishes.new("vindaloo", 10) }

  it "should have a price" do 
    expect(vindaloo.price).to eq 10
  end

  it "should have a name" do 
    expect(vindaloo.name).to eq "vindaloo"
  end

    
end