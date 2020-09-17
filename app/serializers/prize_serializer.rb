class PrizeSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :value
  has_one :user
end
