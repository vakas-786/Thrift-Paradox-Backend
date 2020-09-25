require 'bcrypt'
class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :token, numericality: { greater_than: -1 }
    
    has_many :prizes 
    has_one :account 
    has_many :transactions, through: :account

    def self.addToken(savings, account_user, user_token)
        if savings > 2000 
            account_user.update(token: user_token += 1)
        end 
    end
end
