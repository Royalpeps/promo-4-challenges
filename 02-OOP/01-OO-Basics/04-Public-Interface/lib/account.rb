# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  attr_accessor :name, :initial_deposit, :password, :position, :transactions, :iban

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(- amount)
    return "Vous avez retiré #{amount}"
  end

  def deposit(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(amount)
    return "Vous avez ajouté #{amount}"
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
    puts "enter password"
    password_entered = gets.chomp
    if password_entered == ""
      return "no password given"
    elsif password_entered != @password
      return 'wrong password'
    else return "/#{@transactions}/"
    end
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    @iban_hidden = @iban[0..3] + ("*" * 26) + @iban[30..32]
    @iban_hidden
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    # iban
    "#{@name} - #{@iban} - #{@position} "
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)
    @transactions << amount
    @position = @position + amount
  end
end

compte = BankAccount.new("Bruce Lee", "FR14-2004-1010-0505-0001-3M02-606", 200, "mdp")
compte.withdraw(100)
compte.deposit(300)
p compte.transactions_history



CORRECTION by Max :

 attr_accessor :name, :password, :transactions, :position, :iban

 MIN_DEPOSIT =  100

 def initialize(name, iban, initial_deposit, password)
   fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
   @password = password
   @transactions = []
   @position = 0
   @name = name
   @iban = iban

   add_transaction(initial_deposit)
 end

 def withdraw(amount)
   # TODO: Call add_transaction with the right argument
   # TODO: returns a string with a message
   add_transaction(- amount)
   "You've just withdrawn #{amount} euros"
 end

 def deposit(amount)
   # TODO: Call add_transaction with the right argument
   # TODO: returns a string with a message
   add_transaction(amount)
   "You've just deposit #{amount} euros"
 end

 def transactions_history(args = {})
   # TODO: Check if there is a password and if so if it is correct
   # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
   if args == {}
     "no password given"
   elsif @password == args[:password]
     p @transactions.to_s
   else
     "wrong password"
   end
 end

 def iban
   # TODO: Hide the middle of the IBAN like FR14**************606 and return it
   @iban[0..3] + "*" * 14 + @iban[@iban.length - 3..@iban.length - 1]
 end

 def to_s
   # Method used when printing account object as string (also used for string interpolation)
   # TODO: Displays the account owner, the hidden iban and the position of the account
   "Owner: #{@name}\nIBAN: #{@iban}\nCurrent amount: #{@position} euros"
 end

 private

 def add_transaction(amount)
   # TODO: add the amount in the transactions array
   # TODO: update the current position (which represents the balance of the account)
   @transactions << amount
   @position += amount
 end
end



