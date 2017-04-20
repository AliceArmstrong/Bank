require_relative 'bank_account'

class Atm

  def initialize
    @bank_account = BankAccount.new
  end

  def deposit(dep_amount)
    @bank_account.credit(dep_amount)
  end

  def withdraw(wit_amount)
    fail "Amount not available to withdraw" if wit_amount > @bank_account.balance_count
    @bank_account.debit(wit_amount)
  end

end
