class Prize < ApplicationRecord
  belongs_to :user

  def self.changeStatus(prize)
    prize.update(status: true)
  end 

  def self.removeToken(prize)
    tokenValue = prize.user.token
    prize.user.update(token: tokenValue -1)
  end 
end
