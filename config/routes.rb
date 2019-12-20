Rails.application.routes.draw do
  resources :index
  root 'products#index'
end
