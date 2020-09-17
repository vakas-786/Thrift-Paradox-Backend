class PrizesController < ApplicationController
    skip_before_action :authorized
    
    def index 
        prizes = Prize.all 
        render json: prizes 
    end 

    def show 
        prize = Prize.find(params[:id])
        render json: prize 
    end 

end
