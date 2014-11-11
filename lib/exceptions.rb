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

class RestaurantNotSignedUp < Exception
  def message
    "This Restaurant Has Not Joined Our Service As Yet"
  end
end