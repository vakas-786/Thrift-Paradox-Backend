class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions 

  def self.update_balance(transaction_amount, account_balance, account)
    newBalance = account_balance + transaction_amount.to_i 
    
    account_balance = newBalance
    account.update(balance: account_balance)
  end
end 
