Rails.application.routes.draw do
  devise_for :users
  resources :index
  root 'products#index'
end
