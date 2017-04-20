class BankAccount
attr_accessor :balance_count, :account_history, :credit, :debit

  def initialize
    @balance_count = 0
    @account_history = {}
  end

  def credit(dep_amount)
    @balance_count += dep_amount
    save_history(dep_amount, @balance_count)
    return @balance_count
  end

  def debit(wit_amount)
    @balance_count -= wit_amount
    save_history("-#{wit_amount}", @balance_count)
    return @balance_count
  end

  def save_history(amount, balance)
    t = Time.new
    @account_history.store(Time.now.to_i,[t.strftime("%d/%m/%Y"), amount,balance]) # cannot repeat key
  end

  def print_account_history
    p "Date || Transaction || New balance"
    p @account_history
  end

end
