class RepositoryRestaurant

  attr_reader :customers

  def initialize
    @customers = []
    @customers << Customer.new("Maïté", "12 rue des Deux Boules (Paris)")
    @customers << Customer.new("Marcus", "10 Heron St (San Francisco)")
    @customers << Customer.new("Henry", "145 Oxford St (London)")
  end

  def add(customer)
    @customers << customer
  end

end