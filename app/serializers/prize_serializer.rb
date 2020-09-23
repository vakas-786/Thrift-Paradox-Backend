class PrizeSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :value, :name, :status
  has_one :user
end
