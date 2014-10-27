require_relative '../models/meal'
require_relative "../views/display_meal"
require_relative "../repositories/repository_meal"

class ControllerMeal

  def initialize(repository_meal)
    @repository_meal = repository_meal
    @display_meal = DisplayMeal.new
  end

  def meal_choice
    chosen_meals = {}
    meal_list = @repository_meal.meals
    continue_choice = true
    begin
    meal_index = @display_meal.print_choose_meal(meal_list)
    meal_amount = @display_meal.print_how_many_meal
    chosen_meals[meal_list[meal_index - 1]] = meal_amount
    continue_choice = @display_meal.print_do_you_want_to_add_sthg_else
    end while continue_choice
    return chosen_meals
  end

end