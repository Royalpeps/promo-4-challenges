# Optional
require 'date'

class Transaction
  def initialize(amount)
    # Initialize amount and date of transaction
    @date = Date.today
    @amount = amount
  end

  def to_s
    # Nicely print transaction infos using Time#strftime.

  end
end
