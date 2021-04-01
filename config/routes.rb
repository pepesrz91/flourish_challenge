Rails.application.routes.draw do
  resources :session_stores
  resources :redeemed_rewards
  resources :rewards
  resources :banks
  resources :reward_managers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  resource :users, only: [:create]
    post "/login", to: "users#login"
    post "/create", to:"users#create"
    get "/auto_login", to: "users#auto_login"
end
