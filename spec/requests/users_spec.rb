require 'rails_helper'
require 'jwt'
# require './spec/support/auth_helper.spec.rb'

describe TransactionsController, type: :request do 
    context 'testing transactions'
        it 'returns profile' do 
        get '/transactions' 
        expect(response).to have_http_status(200)
        expect(response.body.size).to eq(2)
    end 
end 

