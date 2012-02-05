SampleApp::Application.routes.draw do

  root to: 'static_pages#home'

  get "users/new"
  match '/signup',  to: 'users#new'
  
  match '/help',    to: "static_pages#help"
  match '/about',   to: "static_pages#about"
  match '/contact', to: "static_pages#contact"
end
