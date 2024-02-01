Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :users
  resources :posts
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
end