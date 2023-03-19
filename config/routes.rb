Rails.application.routes.draw do
  devise_for :users
  root to: 'cheats#index'
  resources :cheats
  resources :users, only: :show
end
