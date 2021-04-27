Rails.application.routes.draw do
  resources :faces
  resources :collections
  resources :rooms
  resources :users

  root to: 'landing#index'
  get 'welcome', to: 'landing#index', as: :welcome
  
end
