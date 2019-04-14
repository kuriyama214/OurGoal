Rails.application.routes.draw do
  get 'top/index'
  devise_for :users
    root to: "top#index"
    resources :tweets
    resources :users, only: [:show,:edit,:update]
end
