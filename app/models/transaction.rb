require 'date'
class Transaction < ApplicationRecord
  belongs_to :account 
  current_time = DateTime.now


  def self.prize_transaction(prize, account)
    Transaction.create(item: prize.name, type_trans: 'Income', category: 'Misc', amount: prize.value, date: Time.now.strftime("%d/%m/%Y %H:%M"), account_id: account.id)
  end
end
