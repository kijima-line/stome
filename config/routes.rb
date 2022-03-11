Rails.application.routes.draw do
 root to: 'stocks#index'
 devise_for :users
 resources :stocks do
   resources :mees
 end
 resources :users, only: :show
end
