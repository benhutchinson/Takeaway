class InsufficientFunds < Exception
  def message
    "Insufficient Funds In Account"
  end
end

class DishNotOnMenu < Exception
  def message
    "This Restaurant Does Not Currently Offer This Dish"
  end
end

class HasNoMenu < Exception
  def message
    "This Restaurant Does Not Currently Offer A Menu"
  end
end

class RestaurantNotSignedUp < Exception
  def message
    "This Restaurant Has Not Joined Our Service As Yet"
  end
end

class PleaseChooseRestaurantFirst < Exception
  def message
    "Please choose a restaurant before choosing a dish"
  end
end

class CustomerNotFinishedChoosing < Exception
  def message
    "Please check if the customer has finished choosing before processing the order"
  end
end