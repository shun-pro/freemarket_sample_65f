Rails.application.routes.draw do
  resources :products
  resources :index
  root 'products#index'
end
