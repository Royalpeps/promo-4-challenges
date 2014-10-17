require_relative 'recipe'
require_relative 'display'

class Controller

  def initialize(cookbook)
    # takes as argument an instance of the Cookbook (fake database).
    @cookbook = cookbook
    @display = Display.new
  end

  def list
# list all the recipes
    recipes = @cookbook.recipes
    @display.print_recipes(recipes)
  end

  def create
    # create a new recipe
    name = @display.print_enter_recipe_name
    description = @display.print_enter_recipe_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # destroy an existing recipe
    id_of_recipe_to_destroy = @display.print_enter_id_of_recipe_to_destroy
    @cookbook.remove_recipe(id_of_recipe_to_destroy)
  end

end