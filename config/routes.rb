Rails.application.routes.draw do
  
  get 'sessions/new'
  root "static_pages#home"
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get  '/add-gem',  to: 'jewels#new'
  post '/add-gem',  to: 'jewels#create'
  get   '/search',    to: 'jewels#search'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/favorite',  to: 'favorites#create'
  get '/my-favorites',  to: 'favorites#show'


  resources :jewels
  resources :users
  resources :favorites
  
end
 