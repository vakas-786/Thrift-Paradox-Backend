class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :avatar, :token
  has_many :prizes
end
