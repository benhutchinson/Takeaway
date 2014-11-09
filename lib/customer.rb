class Customer

  attr_accessor :dishes_to_order
  attr_accessor :finished_choosing

  def initialize
    @dishes_to_order = {}
    @finished_choosing = false
  end

  def choose_dishes(dish, quantity = 1)
    dishes_to_order[dish] = quantity.to_i
  end

  def ready_to_submit_order
    @finished_choosing = true
  end

end