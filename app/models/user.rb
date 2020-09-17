class User < ApplicationRecord
    has_secure_password
    has_many :prizes 
    has_one :account 
    has_many :transactions, through: :account

    validates :username, uniqueness: { case_sensitive: false }
end
