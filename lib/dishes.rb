class Dishes

attr_reader :name
attr_reader :price

def initialize(name, price)
  @name = name
  @price = price
end

def on_the_menu(restaurant, dish)
  restaurant.menu.include?(dish)
end

end