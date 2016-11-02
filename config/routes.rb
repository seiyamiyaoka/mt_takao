Rails.application.routes.draw do
  resources :reculutements, only:[:index, :create, :edit, :update] do
    collection do
      get 'reculutement_index'
    end
  end
  resources :participants, only:[:index]
  resources :promises, only:[:new, :create, :index]
  resources :mount_users, only:[:show, :edit, :update]

  devise_for :users
  root 'top#index'
end
