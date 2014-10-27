require_relative '../models/customer'
require_relative "../views/display_customer"
require_relative "../repositories/repository_restaurant"

class ControllerCustomer

  def initialize(repository_restaurant)
    # takes as argument an instance of the Cookbook (fake database).
    @repository_restaurant = repository_restaurant
    @display_customer = DisplayCustomer.new
  end

  def list
    customer_list = @repository_restaurant.customers
    @display_customer.print_customer_list(customer_list)
  end

  def add
    name = @display_customer.print_enter_customer_name
    address = @display_customer.print_enter_customer_address
    customer = Customer.new(name, address)
    @repository_restaurant.add(customer)
  end

  def get_customer_name
    answer = @display_customer.print_is_it_new_customer
    if answer == "yes"
      name = @display_customer.print_enter_customer_name
      address = @display_customer.print_enter_customer_address
      customer = Customer.new(name, address)
      @repository_restaurant.add(customer)
      return name
    else
      name = @display_customer.print_enter_customer_name
    end
  end

end