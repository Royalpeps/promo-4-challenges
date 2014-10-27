class DisplayMeal

  def print_choose_meal(meal_list)
    puts "What meal do you want to add?"
    meal_list.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name} (#{meal.price} euros)"
    end
    return gets.chomp.to_i
  end

  def print_how_many_meal
    puts "How many of this meal do you want?"
    return gets.chomp.to_i
  end

  def print_do_you_want_to_add_sthg_else
    puts "Do you want to add something else? (yes / no)"
    if gets.chomp == "yes"
      return true
    else
      return false
    end
  end

end