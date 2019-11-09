Rails.application.routes.draw do
  namespace :admin do
    get 'events/edit'
    get 'events/destroy'
  end
  namespace :admin do
    get 'admin/index'
  end
  get 'admins/index'
  devise_for :users, :path_prefix => 'my'
  resources :users
  resources :events do
  resources :pictures, only: [:create]
  resources :charges
  resources :attendances
  end
  namespace :admin do
  	 root 'admin#index'

  	resources :users, only: [:edit, :destroy, :update]
  	resources :events, only: [:edit, :destroy, :update, :show]
   
end

  
  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

