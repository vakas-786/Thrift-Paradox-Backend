class ExchangeRatesController < ApplicationController
    def index 
        rates = ExchangeRate.all 
        render json: rates 
    end 

    def show
        rate = ExchangeRate.find(params[:id])
        render json: rate 
    end 
end
