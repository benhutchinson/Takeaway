class Customer

  attr_reader :dishes_to_order, :finished_choosing, :funds_in_account
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
    raise PleaseChooseRestaurantFirst if @order_restaurant.nil?
    raise DishNotOnMenu unless restaurant.menu.include? dish
    @dishes_to_order[dish] = quantity
  end

  def ready_to_submit_order
    @finished_choosing = true
  end

end