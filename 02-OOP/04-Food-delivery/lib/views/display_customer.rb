class DisplayCustomer

  def print_enter_customer_name
    puts "> Please enter the customer's name:"
    print "> "
    return gets.chomp
  end

  def print_enter_customer_address
    puts "> Please enter the customer's address:"
    print "> "
    return gets.chomp
  end

  def print_customer_list(customer_list)
    puts "Here's the list of customers:"
    customer_list.each_with_index do |customer, index|
      puts "-------------------------------"
      puts "ID: #{index + 1} - #{customer.name}"
      puts "#{customer.address}"
    end
  end

  def print_is_it_new_customer
    puts "Is it a new customer? (yes / no)"
    return gets.chomp
  end

end