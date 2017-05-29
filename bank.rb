# class BankAccount
#  attr_accessor :balance
#  attr_accessor :interest_rate
#
#   def initialize(balance, interest_rate)
#     @balance = balance
#     @interest_rate = interest_rate
#   end
#
#  def deposit(amount)
#    @balance += amount
#  end
# end
#
# account = BankAccount.new(1000, 5)
#
# puts account.balance
# account.deposit(15)
# puts account.balance


# class BankAccount
# attr_accessor :balance
# attr_accessor :interest_rate
# def initialize(balance, interest_rate)
#   @balance = balance
#   @interest_rate = interest_rate
# end
#
# def deposit(amount)
#   @balance += amount
# end
#
# def withdraw(amount)
# @balance -= amount
# end
# def gain_interest(interest_rate)
#
# end
# end
#
# account = BankAccount.new(1000, 20)
# account.withdraw(375)
# puts account.balance


class BankAccount
  attr_accessor :balance
  attr_accessor :interest_rate

def initialize(balance, interest_rate)
  @balance = balance
  @interest_rate = interest_rate
end

account = BankAccount.new(1500, 0.02)

def deposit(amount)
  @balance += amount
end

 account.deposit(300)

def withdraw(amount)
  @balance -= amount
end

account.withdraw(300)

def gain_interest
  @balance *= @interest_rate + 1
end
 account.gain_interest

end
