Rails.application.routes.draw do
  resources :reculutements, only:[:index, :create, :edit, :update]
  resources :participants, only:[:index]
  resources :promises, only:[:new, :create, :index]
  resource  :user, only:[:new, :show, :edit, :update]

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get "top/create_user", to: "top#create_user"
  root 'top#index'
end
