  DISHES = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "French fries" => 130,
  "Potatoes" => 130,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "Coca" => 160,
  "Sprite" => 170
  }

  MENU_HASH = {
  "Happy Meal" => DISHES["Cheese Burger"] + DISHES["French fries"] + DISHES["Coca"],
  "Best Of Big Mac" => DISHES["Big Mac"] + DISHES["French fries"] + DISHES["Coca"],
  "Best Of Royal Cheese" => DISHES["Royal Cheese"] + DISHES["Potatoes"] + DISHES["Sprite"]
  }

 # p MENU_HASH["Best Of Royal Cheese"]

def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  nb_calories = DISHES[burger] + DISHES[side] + DISHES[beverage]
end

#p poor_calories_counter("Cheese Burger", "French fries", "Coca")

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  array = *orders
  nb_calories = 0
  array.each {|item|
  if DISHES.has_key?(item)
     nb_calories += DISHES[item]
   else
     nb_calories += MENU_HASH[item]
   end
  }
  p nb_calories
end



# TO DO calories_counter("Big Mac", "French fries", "Happy Meal", "Coca")

calories_counter("Cheese Burger", "French fries", "Coca", "Potatoes", "Royal Cheese", "French fries", "Coca", "Cheese Burger")


  # list_orders = orders.each_slice(3).to_a
  # p list_orders
  # list_orders.each {|items| items.each items[0]poor_calories_counter }p poor_calories_counter(items.to_s)}
  # p poor_calories_counter(*orders)