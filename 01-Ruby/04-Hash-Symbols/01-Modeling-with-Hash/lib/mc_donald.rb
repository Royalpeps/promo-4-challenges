  BURGER_HASH = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130
  }

  SIDE_HASH = {
  "French fries" => 130,
  "Potatoes" => 130
  }

  BEVERAGE_HASH = {
  "Coca" => 160,
  "Sprite" => 170
  }

  MENU_HASH = {
  "Happy Meal" => BURGER_HASH["Cheese Burger"] + SIDE_HASH["French fries"] + BEVERAGE_HASH["Coca"],
  "Best Of Big Mac" => BURGER_HASH["Big Mac"] + SIDE_HASH["French fries"] + BEVERAGE_HASH["Coca"],
  "Best Of Royal Cheese" => BURGER_HASH["Royal Cheese"] + SIDE_HASH["Potatoes"] + BEVERAGE_HASH["Sprite"]
  }

 # p MENU_HASH["Best Of Royal Cheese"]

def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  nb_calories = BURGER_HASH[burger] + SIDE_HASH[side] + BEVERAGE_HASH[beverage]
end

#p poor_calories_counter("Cheese Burger", "French fries", "Coca")

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  array = *orders
  nb_calories = 0
  array.each {|item|
  if BURGER_HASH.has_key?(item)
     nb_calories += BURGER_HASH[item]
   elsif SIDE_HASH.has_key?(item)
     nb_calories += SIDE_HASH[item]
   elsif BEVERAGE_HASH.has_key?(item)
     nb_calories += BEVERAGE_HASH[item]
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