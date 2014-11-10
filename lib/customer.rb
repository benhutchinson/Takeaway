class Customer

  attr_accessor :dishes_to_order
  attr_accessor :finished_choosing
  attr_accessor :funds_in_account
  attr_accessor :order_restaurant

  def initialize(funds)
    @dishes_to_order = {}
    @order_restaurant
    @finished_choosing = false
    @funds_in_account = funds 
  end

  def choose_restaurant(restaurant)
    @order_restaurant = restaurant
  end

  def choose_dishes(dish, quantity = 1)
    dishes_to_order[dish] = quantity.to_i
  end

  def ready_to_submit_order
    @finished_choosing = true
  end

end