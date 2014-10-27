require_relative '../models/order'
require_relative "../views/display_order"
require_relative "../repositories/repository_order"
require_relative "../repositories/repository_employee"
require_relative "../controllers/controller_meal"
require_relative "../controllers/controller_customer"
require_relative "../controllers/controller_employee"


class ControllerOrder

  def initialize(repository_order, controller_employee, controller_customer, controller_meal)
    @repository_order = repository_order
    @controller_employee = controller_employee
    @controller_customer = controller_customer
    @controller_meal = controller_meal
    @display_order = DisplayOrder.new
  end

  def list
    order_list = @repository_order.orders
    @display_order.print_order_list(order_list)
  end

  def add
    chosen_meals = @controller_meal.meal_choice
    customer_name = @controller_customer.get_customer_name
    chosen_deliveryboy = @controller_employee.deliveryboy_choice
    order = Order.new(chosen_meals, customer_name, chosen_deliveryboy)
    @repository_order.add(order)
    @display_order.print_order_created
  end

  def complete
    chosen_order_id = @display_order.print_enter_id_of_order_to_complete
    @repository_order.complete_order(chosen_order_id)
  end


end