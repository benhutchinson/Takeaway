require 'time'

class DeliveryTime

attr_reader :current_time
attr_reader :expected_delivery

def initialize
  @current_time = Time.new
  @expected_delivery = one_hour_from_now
end

def one_hour_from_now
  hour_plus_one = current_time.strftime("%H").to_i + 1
  if hour_plus_one < 10
    "0" + hour_plus_one.to_s + ":" + current_time.strftime("%M")
  else
    hour_plus_one.to_s + ":" + current_time.strftime("%M")
  end
end

end