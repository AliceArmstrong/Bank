# balance_count = 0
# arr = []
# withdraw x
# y = balance_count - x
# arr < x, y
# new.Hash < :timestamp => [x,y]
# arr.clear
# print Hash

# bank knows account balance and account history, and can print statements
# atm knows how to withdraw and deposit

class BankAccount
attr_accessor :balance_count, :account_history

  def initialize
    @balance_count = 0
    @account_history = {}
  end

  def print_account_history
    p "Date || Transaction || New balance"
    p @account_history
  end

end
