require 'time'

class DeliveryTime

attr_reader :current_time
attr_reader :expected_delivery

def initialize
@current_time = Time.new
@expected_delivery = one_hour_from_now
end

def one_hour_from_now
(current_time.hour + 1).to_s + ":" + current_time.strftime("%M")
end

end