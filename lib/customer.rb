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
    raise RestaurantNotSignedUp unless restaurant.signed_up_to_platform
    raise HasNoMenu unless restaurant.has_menu?
    @order_restaurant = restaurant
  end

  def choose_dishes(dish, restaurant, quantity = 1)
    raise PleaseChooseRestaurantFirst if order_restaurant.nil?
    raise DishNotOnMenu unless dish.on_the_menu(restaurant, dish)
    dishes_to_order[dish] = quantity.to_i
  end

  def ready_to_submit_order
    @finished_choosing = true
  end

end