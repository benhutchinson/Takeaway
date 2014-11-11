class Restaurant

attr_accessor :menu
attr_reader :name
attr_accessor :order_to_prepare

def initialize(name)
  @name = name
  @menu = []
  @order_to_prepare = []
  @signed_up_to_platform = true
end

def has_menu?
  true if menu.count > 0
end

def add_dish_to_menu(dish)
  menu << dish
end

def remove_dish_from_menu(dish)
  menu.delete(dish)
end

def accept_order(order)
  @order_to_prepare << order.dishes_to_fulfil
end

def signed_up_to_platform
  @signed_up_to_platform = true
end

end