Rails.application.routes.draw do
  resources :exchange_rates
  resources :transactions
  resources :accounts
  resources :prizes 
      get '/lottery', to: 'prizes#lottery'
  

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end 
  end
end
