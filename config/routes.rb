Rails.application.routes.draw do
  get '/accounts/:id/show_balance', to: 'accounts#show_balance', as: 'show_balance_account'
  get '/accounts/:id/withdraw', to: 'accounts#withdraw', as: 'withdraw_account'
  get '/accounts/:id/deposit', to: 'accounts#deposit', as: 'deposit_account'
  post '/accounts/:id/transaction', to: 'accounts#transaction' 
  resources :accounts
  root 'home#index'
  get 'home/index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
