Rails.application.routes.draw do
  resources :reculutements, only:[:index, :create, :edit, :update]
  resources :participants, only:[:index]
  resources :promises, only:[:new, :create, :index, :show]
  resource  :user, only:[:new, :show, :edit, :update]

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get "top/create_user"
  get "top/contract"
  get "top/privacy_policy"
  root 'top#index'

  scope :user do
    resources :tasks
  end
end
