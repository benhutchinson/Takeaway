class Informer

  attr_accessor :customer_text_sent
  attr_accessor :text_count

  def initialize
    @customer_text_sent
    @text_count = 0
  end

  def inform_the_customer(text)
    text.send_text
    @customer_text_sent = true
    @text_count += 1
  end

  def inform_the_restaurant(restaurant, order)
    restaurant.accept_order(order)            
  end

end