require 'informer'
require 'restaurant'

describe "Informer" do 

let (:informer) { Informer.new }
let (:text) { double :TextMessage, :send_text => true }
let (:order) { double :OrderAggregator }
let (:restaurant) { double :restaurant, :accept_order => true }

  it 'will call for a text to be sent to a customer when the order is received' do 
    informer.inform_the_customer(text)
    expect(informer.customer_text_sent).to be true
  end

  it 'will pass the order to the restaurant when the order is restaurant is received' do 
    informer.inform_the_restaurant(restaurant, order)
    expect(restaurant).to have_received(:accept_order).with(order)
  end    

end