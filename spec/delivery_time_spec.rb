require 'delivery_time'

describe 'DeliveryTime' do

  let (:my_test_time) { DeliveryTime.new }

  it "must be able to recognise the time one hour from now" do
    expect(my_test_time.one_hour_from_now).to eq (Time.now + 3600).strftime("%H:%M").to_s
  end

end