Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session_path
  end
  
  root to: "top#index"
  resources :users, only: [:show,:edit,:update]
  resources :tweets, only: [:show,:create]
end
