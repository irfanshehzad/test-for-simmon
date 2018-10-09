Rails.application.routes.draw do
  #root to: 'home#index'
  root to: 'users#new'
  delete "log_out" => "sessions#destroy", :as => "log_out"
  resources :users
  resources :sessions,only: [:new,:create]
end
