require 'bank_account'
require 'atm'

  describe BankAccount do
    subject(:bank_account) { described_class.new }
    subject(:atm) { Atm.new }

      it "has a balance count" do
        expect(bank_account.balance_count).to eq(0)
      end

      it "can print the account history" do
        bank_account.credit(10)
        expect(bank_account.print_account_history).to include "2017 || 10 || 10"
      end

    end
