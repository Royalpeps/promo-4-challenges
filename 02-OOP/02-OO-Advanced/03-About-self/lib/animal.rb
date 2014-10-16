class Animal
  attr_accessor :name, :specie, :color, :natural_habitat

  # def initialize
  #   @name = name
  #   @specie = specie
  #   @color = color
  #   @natural_habitat = natural_habitat
  # end

  def name(name)
    @name = name
    # TODO: find good instruction
    self
  end

  def specie(specie)
    @specie = specie
    # TODO: find good instruction
    self
  end

  def color(color)
    @color = color
    # TODO: find good instruction
    self
  end

  def natural_habitat(natural_habitat)
    @natural_habitat = natural_habitat
    # TODO: find good instruction
    self
  end

  def to_s
    "Name: #{@name}, Specie: #{@specie}, Color: #{@color}, Natural Habitat: #{@natural_habitat}"
  end
end


fox = Animal.new.name("Fox").color("red").natural_habitat("forest").specie("mammal")
fox.to_s
# => "Name: Fox, Specie: mammal, Color: red, Natural Habitat: forest"