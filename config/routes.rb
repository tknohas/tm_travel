Rails.application.routes.draw do
  devise_for :users
  get "users/show" => "users#show"
  root to: "home#index"
  resources :users
  resources :rooms 
  resources :reservations
end
