Rails.application.routes.draw do
  root "static_pages#home"
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get  '/add-gem',  to: 'jewels#new'
  post '/add-gem',  to: 'jewels#create'

  resources :jewels
  resources :users
  
end
 