require "date"
require_relative 'meal'

class Order

  attr_reader :meals, :customer_name, :deliveryboy, :price, :id, :date

  @@id = 0

  def initialize(meals, customer_name, deliveryboy)
    @meals = meals
    @customer_name = customer_name
    @deliveryboy = deliveryboy
    @id = id_generator
    @date = Date.today
  end

  def id_generator
    @@id += 1
  end

  def price
    @price = 0
    @meals.each {|meal, amount| @price += (meal.price * amount) }
    return @price
  end

end