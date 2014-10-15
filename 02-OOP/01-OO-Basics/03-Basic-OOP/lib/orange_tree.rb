class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  attr_accessor :age, :height, :fruits

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
  end


  def dead?
    if @age < 50
      false
    elsif (@age - 50) < (1..51).to_a.sample
      false
    else
      true
    end
  end

  def one_year_passes!
    @age = @age + 1

    if @age < 11
      @height = @height + 1
    else
      @height = @height
    end

    if @age > 5 && @age < 11
      @fruits = 100
    elsif @age > 10 && @age < 16
      @fruits = 200
    else
      @fruits = 0
    end

  end

  def pick_a_fruit!
    @fruits = fruits - 1
  end

end


tree1 =  OrangeTree.new

p tree1.age
p tree1.height.to_i
p tree1.dead?
p tree1.fruits
p "----------"


12.times do
  tree1.one_year_passes!
end

p tree1.age
p tree1.height
p tree1.dead?
p tree1.fruits
p "----------"

6.times do
  tree1.one_year_passes!
end

p tree1.age
p tree1.height
p tree1.dead?
p tree1.fruits











