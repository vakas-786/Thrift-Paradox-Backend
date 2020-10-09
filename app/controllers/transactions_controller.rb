class TransactionsController < ApplicationController
    skip_before_action :authorized 
    before_action :find_transaction, only: [:update]

    def index 
        transactions = Transaction.all 
        order = transactions.sort { |a,b| b.date <=> a.date}
        render json: order
    end  

    def create 
        transaction = Transaction.create(transaction_params)
        render json: transaction  
    end 

    def update 
        transaction.update(transaction_params)
        render json: transaction
    end 

    def show 
        transaction = Transaction.find(params[:id])
        render json: transaction
    end 

    def destroy 
        byebug
        transaction = Transaction.find(params[:id])
        transaction.destroy 
        render json: transaction 
    end 

    private 

    def transaction_params
        params.require(:transaction).permit( :item, :type_trans, :category, :amount, :date, :account_id)
    end 

    def find_transaction
        @transaction = Transaction.find(params[:id])
    end

end
