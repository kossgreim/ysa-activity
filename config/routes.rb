Rails.application.routes.draw do
  root 'pages#index'

  get 'info', to: 'pages#info'
  get 'contact', to: 'pages#contact'
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
