require 'time'

class DeliveryTime

attr_reader :current_time
attr_reader :expected_delivery

def initialize
  @current_time = Time.new
  @expected_delivery = one_hour_from_now
end

def one_hour_from_now
  hour = current_time.strftime("%H")
  hour_plus_one = hour.to_i + 1
  hour_plus_one.to_s + ":" + current_time.strftime("%M")
end

end