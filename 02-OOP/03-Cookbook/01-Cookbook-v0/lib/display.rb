class Display

  def print_recipes(recipes)
    puts "Here's the list of the recipes :"
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} : #{recipe.description}."
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

  def print_enter_id_of_recipe_to_destroy
    puts "What is the number of the recipe you want to destroy, bitch?"
    print "> "
    return gets.chomp.to_i
  end
end