Rails.application.routes.draw do
  resources :reculutements, only:[:index, :create] do
    collection do
      get 'reculutement_index'
    end
  end
  resources :promises, only:[:new, :create]
  resources :mount_users, only:[:show, :edit, :update]

  devise_for :users
  root 'top#index'
end
