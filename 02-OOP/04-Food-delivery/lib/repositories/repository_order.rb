class RepositoryOrder

  attr_reader :orders

  def initialize
    @orders = []
  end

  def add(order)
    @orders << order
  end

  def complete_order(chosen_order_id)
     @orders.each do |order|
       if order.id == chosen_order_id then @orders.delete(order) end
     end
  end

end