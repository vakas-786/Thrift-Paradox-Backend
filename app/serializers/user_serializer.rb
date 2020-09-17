class UserSerializer < ActiveModel::Serializer
  attributes :username, :firstname, :lastname, :avatar, :token
  # :id, 
end
