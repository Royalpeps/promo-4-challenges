require 'open-uri'
require 'json'



def generate_grid(grid_size)
  # TODO: generate random grid of letters
  letters =("A".."Z").to_a
  grid = []
  i = 0
  while i < grid_size do
    i += 1
    grid << letters.sample
  end
  grid
end

# # #p generate_grid(5)

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
  hash = {}
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
  open(api_url) do |stream|
    translation = JSON.parse(stream.read)
    if translation["Error"] == "NoTranslation"
      hash = {
        translation: nil}
    else
      hash = {
      translation: translation["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]}
    end
  end

  hash[:time] = end_time - start_time

  array = attempt.upcase.split("").take_while { |letter| grid.include?(letter) }
  if array.length == attempt.length
    included = true
  else included = false
  end

  if hash[:translation] == nil
    hash[:score] = 0
    hash[:message] = "not an english word"
  elsif included == true
    hash[:score] = (attempt.length * 10 ) / hash[:time]
    if hash[:score] > 10
      hash[:message] = "well done"
    elsif hash[:score] > 6
      hash[:message] = "Pas mal !"
    else
      hash[:message] = "Bof ! Essaie encore ;)"
    end
    else
    hash[:score] = 0
    hash[:message] = "not in the grid"
  end

  hash
end


# grid = ["O","I","J","K","L"]
# "abi".upcase.split("").each {|letter| if grid.include?(letter)
#   puts "ds le grid"
#   else
#   puts "pas ds le grid"
# end}

# array = attempt.upcase.split("").take_while { |letter| grid.include?(letter) }
# if array.length == attempt.length
#   included = true
# else included = false
# end


# run_game("hello", grid, start_time, end_time)


# def test(attempt)
#   api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
#   hash = {}
#   open(api_url) do |stream|
#     translation = JSON.parse(stream.read)
#     if translation["Error"] == "NoTranslation"
#       puts "not in English"
#     else
#     p hash = {
#     translation: translation["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
#     }
#   end
#   end
# end

# test("sefefe")



