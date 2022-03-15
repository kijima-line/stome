Rails.application.routes.draw do
 root to: 'stocks#index'
 devise_for :users
 resources :stocks do
   resources :mees,only: [:create, :destroy,:edit, :update,:show]
 end
 resources :users, only: :show
end
