class PrizesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show]

    def index 
        prizes = current_user.prizes 
        render json: prizes 
    end 

    def lottery
        if current_user.token > 0 
        prizes = current_user.prizes 
        @random = prizes.sample
        Prize.removeToken(@random)
        Prize.changeStatus(@random)
        render json: @random 
        else 
            render json: { error: 'insufficient amount of lottery tokens' }, status: :not_acceptable
        end
    end 

    def show 
        prize = Prize.find(params[:id])
        render json: prize 
    end 

    def update 
        prize = Prize.find(params[:id])
        prize.update(prize_params)
        account = current_user.account
        Transaction.prize_transaction(prize, account)
        render json: prize
    end 

    private 

    def prize_params
        params.require(:prize).permit(:image_url, :value, :name, :status, :user_id)
    end 
end
