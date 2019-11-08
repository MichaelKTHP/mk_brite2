Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :events do
  resources :pictures, only: [:create]
  resources :charges
  resources :attendances
  end
  
  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

