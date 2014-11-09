class OrderAggregator

  attr_accessor :total_price
  attr_accessor :price_quantity_array
  
  def initialize
    @total_price
  end

  def create_a_price_quantity_array(customer)
    @price_quantity_array = customer.dishes_to_order.map { |dish, quantity| dish.price.to_i * quantity.to_i } 
  end  

  def create_the_basket_total(customer)
    total_price = @price_quantity_array.inject{ |sum, x| sum + x }
  end

end