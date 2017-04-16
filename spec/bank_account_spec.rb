require 'bank_account'
require 'atm'

  describe BankAccount do
    subject(:bank_account) { described_class.new }
    subject(:atm) { Atm.new }

      it "has a balance count" do
        expect(bank_account.balance_count).to eq(0)
      end

      # it "balance count can be changed" do
      #   atm.deposit(4)
      #   expect(bank_account.balance_count).to eq (5)
      # end

      it "can register a timestamp with deposts/withdrawls" do

      end

      it "has an account history" do
        expect(bank_account.account_history).not_to be_nil
      end

      it "can print the account history" do
        atm.deposit(5)
        bank_account.print_account_history
      end

    end
