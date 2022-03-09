Rails.application.routes.draw do
 root to: 'stocks#index'
 resources :stocks
end
