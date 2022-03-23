Rails.application.routes.draw do
 root to: 'stocks#index'
 devise_for :users
 resources :stocks do
   resources :mees,only: [:create, :destroy,:edit, :update,:show]
   resource :likes, only: [:create, :destroy]
   collection do
    get 'search'
  end
 end
 resources :users, only: :show
end
