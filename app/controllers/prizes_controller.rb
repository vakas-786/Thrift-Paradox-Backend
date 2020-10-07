class PrizesController < ApplicationController
    skip_before_action :authorized

    def index 
        prizes = Prize.all 
        render json: prizes 
    end 

    def lottery
        prizes = Prize.all 
        @random = prizes.sample
        Prize.removeToken(@random)
        Prize.changeStatus(@random)
        render json: @random 
    end 

    def show 
        prize = Prize.find(params[:id])
        render json: prize 
    end 

    def update 
        prize = Prize.find(params[:id])
        prize.update(prize_params)
        account = Account.all.first
        Transaction.prize_transaction(prize, account)
        render json: prize
    end 

    private 

    def prize_params
        params.require(:prize).permit(:image_url, :value, :name, :status, :user_id)
    end 
end
