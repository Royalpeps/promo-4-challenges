class Recipe

  attr_reader :name, :description, :time
  attr_accessor :marked, :difficulty

  def initialize(name, description, time, marked = false, difficulty = "Facile")
    @name = name
    @description = description
    @time = time
    @marked = marked
    @difficulty = difficulty
  end

  def mark
    @marked = true
  end

end