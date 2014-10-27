require_relative "../views/display_restaurant"

class ControllerRestaurant

  def initialize(restaurant)
    # takes as argument an instance of the Cookbook (fake database).
    @restaurant = restaurant
    @display_restaurant = DisplayRestaurant.new
  end

  def display_restaurant
    restaurant_name = @restaurant.name.upcase
    @display_restaurant.print_restaurant_name(restaurant_name)
  end

end