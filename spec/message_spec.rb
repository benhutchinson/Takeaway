require 'message'
require 'delivery_time'

describe 'Text Messages' do 

  let (:text) { TextMessage.new }
  let (:no_actual_text) { double :test, :send_text => true}

  it 'a double does not actually text for testing purposes' do
    expect(no_actual_text.send_text).to be true
  end

end