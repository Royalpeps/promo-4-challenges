class Restaurant
  # TODO: add relevant accessors if necessary
  attr_accessor :average_rating, :city, :name

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = 0
    @rating_nb = 0
  end

  def rate(rating)
    @rating_nb += 1
    @average_rating = (rating + @average_rating) / @rating_nb
  end

  def self.filter_by_city(restaurants, city)
    result = []
    restaurants.each {|resto|
      if resto.city == city
        result << resto
      end
    }
    return result
  end

end

jules_verne = Restaurant.new("paris", "Jules Verne")
tour_d_argent = Restaurant.new("paris", "Tour d'argent")
bocuse = Restaurant.new("lyon", "Paul Bocuse")

restos = [jules_verne, tour_d_argent, bocuse]
p Restaurant.filter_by_city(restos,"lyon")