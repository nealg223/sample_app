SampleApp::Application.routes.draw do

  root to: 'static_pages#home'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  match '/users',   to: 'users#index'
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout',  to: 'sessions#destroy'
  
  match '/help',    to: "static_pages#help"
  match '/about',   to: "static_pages#about"
  match '/contact', to: "static_pages#contact"
end
