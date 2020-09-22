class UserSerializer < ActiveModel::Serializer
  attributes :username, :firstname, :lastname, :avatar, :token
  has_many :prizes
end
