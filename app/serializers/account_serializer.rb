class AccountSerializer < ActiveModel::Serializer
  attributes :id, :income, :expense, :balance, :investments, :saving, :totalSavings
  has_one :user
end
