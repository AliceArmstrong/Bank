require 'atm'
require 'bank_account'

  describe Atm do
    bank_account = BankAccount.new
    atm = Atm.new

    it "can deposit into balance count" do
      atm.deposit(5)
      expect(atm.deposit(5)).to eq(10)
    end

    it "can withdraw from balance count" do
      expect(atm.withdraw(5)).to eq(5)
    end

    it "raises an error if withdraw amount is higher than bank balance" do
      expect{atm.withdraw(10)}.to raise_error("Amount not available to withdraw")
    end

  end
