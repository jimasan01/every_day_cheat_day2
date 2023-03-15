Rails.application.routes.draw do
  root to: 'cheats#index'
  resources :cheats, only: [:index, :new, :create]
end
