class ExchangeRatesController < ApplicationController
    skip_before_action :authorized
    
    def index 
        rates = ExchangeRate.all 
        render json: rates 
    end 

    def show
        rate = ExchangeRate.find(params[:id])
        render json: rate 
    end 
end
