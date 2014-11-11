class OrderAggregator

  attr_accessor :total_price
  attr_accessor :price_quantity_array
  attr_accessor :restaurant
  attr_accessor :dishes_to_fulfil
  
  def initialize(customer)
    @customer = customer
    @total_price
    @restaurant
    @dishes_to_fulfil = []
  end

  def create_a_price_quantity_array(customer)
    @price_quantity_array = customer.dishes_to_order.map { |dish, quantity| dish.price.to_i * quantity.to_i } 
  end  

  def create_the_basket_total(customer)
    @total_price = @price_quantity_array.inject{ |sum, x| sum + x }
  end

  def can_customer_afford?(customer)
    raise InsufficientFunds if total_price.to_i > customer.funds_in_account.to_i
    true
  end

  def which_restaurant_is_order_for(customer)
    @restaurant = customer.order_restaurant
  end

  def what_dishes_to_fulfil(customer)
    @dishes_to_fulfil << customer.dishes_to_order
  end

end