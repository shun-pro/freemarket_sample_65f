Rails.application.routes.draw do

  devise_for :users

  resources :products

  resources :index
  root 'products#index'
end
