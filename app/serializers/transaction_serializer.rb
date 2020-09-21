class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :item, :type_trans, :category, :amount, :date
  has_one :account
end
