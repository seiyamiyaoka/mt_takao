Rails.application.routes.draw do
  resources :reculutements, only:[:index, :create, :edit, :update]
  resources :participants, only:[:index]
  resources :promises, only:[:new, :create, :index]
  resources :mount_users, only:[:show, :edit, :update]

  devise_for :users

  get "top/create_user", to: "top#create_user"
  root 'top#index'
end
