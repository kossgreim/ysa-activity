Rails.application.routes.draw do

  authenticated :user do
    root :to => "admin/main#index", as: :authenticated_root
  end

  root 'pages#index'
  get "program", to: 'pages#program', as: :program
  get 'registration', to: 'admin/registrations#new'
  
  namespace :admin do
     root :to => "main#index"
     
     get 'report', to: 'main#report'
     get 'search', to: 'main#search'
     
     resources :users
     resources :registrations
  end

  devise_for :users
end
