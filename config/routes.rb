Rails.application.routes.draw do
  root 'pages#index'

  get 'info', to: 'pages#info'
  get 'contact', to: 'pages#contact'
  get 'registration', to: 'pages#registration'
  
  namespace :admin do
     root :to => "users#index"
    resources :users
  end

  devise_for :users
end
