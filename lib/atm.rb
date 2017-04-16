require_relative 'bank_account'

class Atm

  def initialize
    @bank_account = BankAccount.new
  end

  def deposit(dep_amount)
    @bank_account.balance_count += dep_amount
    save_history(dep_amount, @bank_account.balance_count)
  end

  def withdraw(wit_amount)
    @bank_account.balance_count -= wit_amount
    save_history(wit_amount, @bank_account.balance_count)
  end

  def save_history(amount, balance)
    # @bank_account.account_history[amount] = balance
    @bank_account.account_history.store(amount, balance) # still only showing last element in history hash
  end

end
