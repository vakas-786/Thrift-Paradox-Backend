require 'bcrypt'
class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :token, numericality: { greater_than: -1 }
    
    has_many :prizes 
    has_one :account
    has_many :transactions, through: :account

    def self.addToken(savings, account_user, user_token)
        if savings >= 2000 
            account_user.update(token: user_token += 1)
        end 
    end

    def assign_prizes(user)
        prizes_array = []
        
        prizes_array.push(Prize.create(image_url: 'https://i.imgur.com/JyHrUVb.png' , value: 300.00, user_id: User.all.first.id, name: "Zombie", status: false))
        prizes_array.push(Prize.create.(image_url: 'https://i.imgur.com/j1URdpA.png' , value: 450.00, user_id: User.all.first.id,  name: "Jelly", status: false))
        prizes_array.push(Prize.create.(image_url: 'https://i.imgur.com/OHythEC.png' , value: 800.00, user_id: User.all.first.id, name: "Robot", status: false))
        prizes_array.push(Prize.create.(image_url: 'https://i.imgur.com/ibOpny9.png' , value: 375.00, user_id: User.all.first.id, name: "Cat", status: false))
        prizes_array.push(Prize.create.(image_url: 'https://i.imgur.com/Dsfbaej.png' , value: 375.00, user_id: User.all.first.id, name: "Dog", status: false))
        prizes_array.push(Prize.create.(image_url: 'https://i.imgur.com/lnGEpMY.png' , value: 625.00, user_id: User.all.first.id, name: "Plane", status: false))
        prizes_array.push(Prize.create.(image_url: 'https://i.imgur.com/p2ULS7A.png' , value: 740.00, user_id: User.all.first.id, name: "Dinosaur", status: false))

        prizes_array = user.prizes
    end 

end
