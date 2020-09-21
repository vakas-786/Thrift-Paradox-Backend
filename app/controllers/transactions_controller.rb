class TransactionsController < ApplicationController
    skip_before_action :authorized

    def index 
        transactions = Transaction.all 
        render json: transactions
    end  

    def create 
        transaction = Transaction.create(transaction_params)
        Account.update_balance(transaction_params[:amount], transaction.account.balance, transaction.account)
        render json: transaction 
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
