require 'csv'

class Cookbook

  attr_reader :recipes


  def initialize(csv_file)
    # loads existing Recipe from the CSV
    @csv_options = { col_sep: ','}
    @csv_file = csv_file
    @recipes = []
    CSV.foreach(@csv_file, @csv_options) do |row|
      recipe = Recipe.new(row[0], row[1])
      @recipes << recipe
    end
  end

  def add_recipe(recipe)
    # adds a new recipe to the cookbook
    @recipes << recipe
    recipe_array_for_csv = [recipe.name, recipe.description]
    CSV.open(@csv_file, 'ab', @csv_options) do |csv|
      csv << recipe_array_for_csv
    end
  end

  def remove_recipe(id_of_recipe_to_destroy)
    # removes a recipe from the cookbook.
    # recipes.each_with_index do |recipe, index|
    #   if index + 1 == id_of_recipe_to_destroy
    #     recipe.delete(self) end
    #   end
    recipe_array = []

    @recipes.delete_at(id_of_recipe_to_destroy - 1)

    CSV.foreach(@csv_file, @csv_options) do |row|
      recipe = Recipe.new(row[0], row[1])
      recipe_array << recipe
    end

    recipe_array.delete_at(id_of_recipe_to_destroy - 1)
    # recipe_array.map! {|recipe| recipe = [recipe.name, recipe.description] }
    CSV.open(@csv_file, 'wb', @csv_options) do |csv|
      recipe_array.each { |recipe|
        recipe_array_for_csv = [recipe.name, recipe.description]
      csv << recipe_array_for_csv
      }
    end
  end

end




# PARSING

# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
# filepath    = '/Users/charlesquint/documents/beers.csv'

# CSV.foreach(filepath, csv_options) do |row|
#   puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
# end


# STORING

# csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
# filepath    = '/Users/charlesquint/documents/beers.csv'

# CSV.open(filepath, 'wb', csv_options) do |csv|
#   csv << ['Name', 'Appearance', 'Origin']
#   csv << ['Edelweiss', 'White', 'Austria']
#   csv << ['Cuvée des Trolls', 'Blond', 'Belgium']
#   # ...
# end



# BOX OFFICE

# filepath    = '/Users/adrienmontcoudiol/code/amontcoudiol/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv'

# def most_successfull(number, max_year, file_name)
#   csv_options = { col_sep: ',', encoding: "utf-8" }
#   array = []
#   CSV.foreach(file_name,csv_options) { |row|
#     movies = { name: row[0], year: row[1].to_i, earnings: row[2].to_i}
#     array << movies
#   }
#   array = array.select {|movies| movies[:year] < max_year}
#   array.sort_by {|movies| movies[:earnings]}
#   array.first(number)
# end



