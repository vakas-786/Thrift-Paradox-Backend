class AccountSerializer < ActiveModel::Serializer
  attributes :id, :saving
  has_one :user
end
