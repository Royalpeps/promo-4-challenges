# Encoding: utf-8
require 'csv'

filepath    = '/Users/adrienmontcoudiol/code/amontcoudiol/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv'

# CSV.open(filepath, 'wb', csv_options) { |csv| csv << ['Name', 'Date', 'Revenue'] }

# CSV.read(filepath,csv_options)


def most_successfull(number, max_year, file_name)
  csv_options = { col_sep: ',', encoding: "utf-8" }
  array = []
  CSV.foreach(file_name,csv_options) { |row|
    movies = { name: row[0], year: row[1].to_i, earnings: row[2].to_i}
    array << movies
  }
  array = array.select {|movies| movies[:year] < max_year}
  array.sort_by {|movies| movies[:earnings]}
  array.first(number)
end

p most_successfull(5, 1999, "/Users/adrienmontcoudiol/code/amontcoudiol/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv")

# array.map {|movie| movie.to_a}


# array = array.each {|movie_data| movie_data.delete_if {movie_data[1][1].to_i < 2000}}

# # array.sort_by {|movie_data| movie_data[2][1]}
# # array = array[4]

# p array


# _______________________




# def most_successfull(number, max_year, file_name)
#   # TODO: return the number most successfull movies max_year
#   csv_options = { col_sep: ',', encoding: "utf-8" }
#   tab_movies = []
#   CSV.foreach(file_name, csv_options) do |row|
#     movies = { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
#     tab_movies << movies
#   end
#   result = tab_movies.select { |movie| movie[:year] < max_year }
#   result.sort { |x, y| x[:earnings] <=> y[:earnings] }
#   return result.first(number)
# end


