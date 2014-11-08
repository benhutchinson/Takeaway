require 'twilio-ruby'

class TextMessage

account_sid = ENV['MY_TWILIO_USER']
auth_token = ENV['MY_TWILIO_AUTH']
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.messages.create(:body => "Food",
    :from => ENV['MY_TWILIO_NUMBER'],
    :to => ENV['MY_MOBILE'])

puts message.to

end