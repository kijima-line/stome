Rails.application.routes.draw do
  devise_for :users
 root to: 'stocks#index'
 resources :stocks do
  resources :mees, only: :create
end
 resources :users, only: :show
end
