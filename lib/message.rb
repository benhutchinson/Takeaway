# I have built this to offer flexibility
# in how long the wait for delivery is.
# The expected_delivery variable is controlled 
# separately in the DeliveryTime class.
# This aims to reflect SOLID principles.
# i.e. TextMessage is ceding control of DeliveryTime
# I see this as consistent with Dependency Inversion
# TextMessage depends on an abstraction

require 'twilio-ruby'

class TextMessage

def initialize
  account_sid = ENV['MY_TWILIO_USER']
  auth_token = ENV['MY_TWILIO_AUTH']
  @client = Twilio::REST::Client.new account_sid, auth_token
  @expected_time = DeliveryTime.new.expected_delivery
end

def send_text
  @message = @client.account.messages.create(:body => "Thank you. Your order was placed and will be delivered before #{@expected_time}",
    :from => ENV['MY_TWILIO_NUMBER'],
    :to => ENV['MY_MOBILE'])
end

end