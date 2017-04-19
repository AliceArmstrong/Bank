require_relative 'bank_account'

class Atm

  def initialize
    @bank_account = BankAccount.new
  end

  def deposit(dep_amount)
    @bank_account.balance_count += dep_amount
    @bank_account.save_history(dep_amount, @bank_account.balance_count)
    return @bank_account.balance_count
  end

  def withdraw(wit_amount)
    @bank_account.balance_count -= wit_amount
    @bank_account.save_history("-#{wit_amount}", @bank_account.balance_count)
    return @bank_account.balance_count
  end

  def save_history(amount, balance)
    t = Time.new
    @bank_account.account_history.store(Time.now.to_i,[t.strftime("%d/%m/%Y"), amount,balance]) # cannot repeat key
  end

end
