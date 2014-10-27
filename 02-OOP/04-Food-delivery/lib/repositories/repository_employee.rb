class RepositoryEmployee

  attr_reader :employees, :deliveryboys

  def initialize
    @employees = []
    @employees << Employee.new("jack", "mdp1", "manager")
    @employees << Employee.new("bill", "mdp2", "delivery boy")
    @employees << Employee.new("bob", "mdp3", "delivery boy")
    @deliveryboys = []
    @employees.each {|employee| if employee.status == "delivery boy" then @deliveryboys << employee end}
  end

end