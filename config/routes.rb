Rails.application.routes.draw do
  resources :exchange_rates
  resources :transactions
  resources :accounts
  resources :prizes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
