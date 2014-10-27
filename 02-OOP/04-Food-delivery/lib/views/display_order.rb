class DisplayOrder

  def print_order_list(order_list)
    puts "Here's the list of orders:"
    if order_list == []
      puts "There's no order yet!"
    else
      order_list.each do |order|
        puts "Order ID:#{order.id} - Customer name: #{order.customer_name} (#{order.date})"
        puts "Assigned to: #{order.deliveryboy.name}"
        puts "Meals:"
        order.meals.each {|meal, amount|
          puts " - #{amount} #{meal.name} (#{amount} x #{meal.price} euros)"
        }
        puts "Total price: #{order.price} euros"
        puts "-------------------------------"
      end
    end
  end

  def print_order_created
    puts "Your order was created!"
  end

  def print_enter_id_of_order_to_complete
    puts "Please enter the id of the order you want to complete:"
    puts "> "
    return gets.chomp.to_i
  end

end