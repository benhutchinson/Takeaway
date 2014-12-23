class OrderAggregator

  attr_accessor :total_price, :price_quantity_array
  attr_reader :restaurant, :dishes_to_fulfil
  
  def initialize(customer)
    @customer = customer
    @restaurant = customer.order_restaurant
    @dishes_to_fulfil = customer.dishes_to_order
    @total_price
  end

  def process_order(customer)
    raise CustomerNotFinishedChoosing unless customer.finished_choosing
    affordability_check(customer)
  end

  def affordability_check(customer)
    create_a_price_quantity_array(customer)
    create_the_basket_total(customer)
    can_customer_afford?(customer)
  end

  def create_a_price_quantity_array(customer)
    @price_quantity_array = customer.dishes_to_order.map { |dish, quantity| dish.price * quantity } 
  end  

  def create_the_basket_total(customer)
    @total_price = @price_quantity_array.inject{ |sum, x| sum + x }
  end

  def can_customer_afford?(customer)
    raise InsufficientFunds if @total_price > customer.funds_in_account
    true
  end

end