require 'bcrypt'
class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    
    has_many :prizes 
    has_one :account 
    has_many :transactions, through: :account

end
