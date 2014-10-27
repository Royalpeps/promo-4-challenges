class RepositoryMeal

  attr_reader :meals

  def initialize
    @meals = []
    @meals << Meal.new("Le gros burger à Gégé", 12)
    @meals << Meal.new("Pizza de la muerte", 15)
    @meals << Meal.new("Vodka Redbull", 9)
  end

end