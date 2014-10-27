class DisplayEmployee

  def print_enter_username
    puts "> Please enter your username:"
    print "> "
    return gets.chomp
  end

  def print_enter_password
    puts "> Please enter your password:"
    print "> "
    return gets.chomp
  end

  def print_welcome_message(username, status)
    puts "> -------------------------------"
    puts "Welcome, #{username}.  Your access level is : #{status}"
  end

  def print_wrong_password
    puts "> -------------------------------"
    puts "Wrong combination username / password. Please try again!"
  end

  def print_employee_list(employee_list)
    puts "Here's the list of employees:"
    employee_list.each_with_index do |employee, index|
      puts "#{index + 1} - #{employee.name} (#{employee.status})"
    end
  end

  def print_choose_deliveryboy(deliveryboy_list)
    puts "Who do you want to assign this order to?"
    deliveryboy_list.each_with_index do |deliveryboy, index|
      puts "#{index + 1} - #{deliveryboy.name}"
    end
    return gets.chomp.to_i
  end

end