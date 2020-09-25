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


end
