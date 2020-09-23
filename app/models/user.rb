require 'bcrypt'
class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    
    has_many :prizes 
    has_one :account 
    has_many :transactions, through: :account

    def self.addToken(savings, account_user, user_token)
        if savings > 2000 
            account_user.update(token: user_token += 1)
        else 
            account_user.update(token: 0)
        end 
    end 

    # def self.update_token(params, user)
    #     byebug
    #     user.update(token: params)
    # end 


end
