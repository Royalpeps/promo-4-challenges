class Display

  def print_recipes(recipes)
    puts "Here's the list of the recipes :"
    recipes.each_with_index do |recipe, index|
      if recipe.marked == true
        puts "#{index + 1} - [x] #{recipe.name} - #{recipe.difficulty} - #{recipe.time}."
        puts "#{recipe.description}"
        puts " - - -"
      else
        puts "#{index + 1} - [ ] #{recipe.name} - #{recipe.difficulty} - #{recipe.time}."
        puts "#{recipe.description}"
        puts " - - -"
      end
    end
  end

  def print_enter_recipe_name
    puts "What is the name of the new recipe?"
    print "> "
    return gets.chomp
  end

  def print_enter_recipe_description
    puts "What is the description of the new recipe?"
    print "> "
    return gets.chomp
  end

  def print_enter_recipe_time
    puts "How long does it take to cook?"
    print "> "
    return gets.chomp
  end

  def print_enter_id_of_recipe_to_destroy
    puts "What is the number of the recipe you want to destroy, bitch?"
    print "> "
    return gets.chomp.to_i
  end

  def print_enter_ingredient_for_import
    puts "Import recipes for which ingredient ?"
    print "> "
    return gets.chomp
  end

  def print_import_finished
    puts "Import finished!"
  end

  def print_enter_id_of_recipe_to_mark
    puts "What is the number of the recipe you want to mark, bitch?"
    print "> "
    return gets.chomp.to_i
  end

end