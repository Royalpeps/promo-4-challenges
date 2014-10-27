require_relative '../models/employee'
require_relative "../views/display_employee"
require_relative "../repositories/repository_employee"

class ControllerEmployee

  def initialize(repository_employee)
    # takes as argument an instance of the Cookbook (fake database).
    @repository_employee = repository_employee
    @display_employee = DisplayEmployee.new
    @password_hash = Employee.password_hash
    @status_hash = Employee.status_hash
  end

  def login
    username = @display_employee.print_enter_username
    password = @display_employee.print_enter_password

    while password != @password_hash[username]
      @display_employee.print_wrong_password
      username = @display_employee.print_enter_username
      password = @display_employee.print_enter_password
    end

    status = @status_hash[username].upcase
    @display_employee.print_welcome_message(username, status)
    return "#{status}"
  end

  def list
    employee_list = @repository_employee.employees
    @display_employee.print_employee_list(employee_list)
  end

  def deliveryboy_choice
    deliveryboy_list = @repository_employee.deliveryboys
    deliveryboy_index = @display_employee.print_choose_deliveryboy(deliveryboy_list)
    chosen_deliveryboy = @repository_employee.deliveryboys[deliveryboy_index - 1]
    return chosen_deliveryboy
  end

end