class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :item, :type, :amount, :date
  has_one :account
end
