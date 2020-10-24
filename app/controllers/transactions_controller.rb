class TransactionsController < ApplicationController
    skip_before_action :authorized, only: [:create, update, :show, destroy]

    def index 
        transactions = current_user.transactions
        order = transactions.sort { |a,b| b.date <=> a.date}
        render json: order
    end  

    def create 
        transaction = Transaction.create(transaction_params)
        render json: transaction  
    end 

    def update 
        @transaction = Transaction.find(params[:id])
        @transaction.update(transaction_params)
        render json: @transaction
    end 

    def show 
        transaction = Transaction.find(params[:id])
        render json: transaction 
    end 

    def destroy 
        transaction = Transaction.find(params[:id])
        transaction.destroy 
        render json: transaction 
    end 

    private 

    def transaction_params
        params.require(:transaction).permit( :item, :type_trans, :category, :amount, :date, :account_id)
    end 

end
