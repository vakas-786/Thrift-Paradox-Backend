class AccountsController < ApplicationController
    skip_before_action :authorized
    
    def index 
        accounts = Account.all 
        render json: accounts 
    end 

    def show 
        account = Account.find(params[:id])
        render json: account 
    end 

    def update
       account = Account.find(params[:id])
        account.update(account_params)
        User.addToken(account_params[:saving], account.user, account.user.token)
        render json: account 
    end 

    private 
    def account_params
        params.require(:account).permit(:saving, :user_id)
    end 
end
