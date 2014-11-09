require 'informer'

describe "Informer" do 

let(:informer) { Informer.new }
let(:text) { double :TextMessage, :send_text => true }

  it 'will call for a text to be sent to a customer when the order is received' do 
    informer.inform_the_customer(text)
    expect(informer.customer_text_sent).to be true
  end

  # it 'will pass the order to the restaurant when the order is restaurant is received' do 
      # this will involve restaurant calling 
      # array in order of dishes
      # restaurant > has_order? perhaps
  # end  

  # worth writing out order of things in README
  # ie customer chooses restaurant
  # selects dishes
  # when finished, check they have funds
  # restaurant notified of order
  # restaurant getes order
  # customer get sent a text
  # errors > dish does not exist
  # errors > dish not at that restaurant
  # errors > restaurant does not exist
  # what did they mean by the listing stuff?

end