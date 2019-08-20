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

  get '/comments/:id', to: 'microposts#index'
  get '/edit/:id', to: 'microposts#edit'
  patch '/edit/:id', to: 'microposts#update'
  post '/post', to: 'microposts#create'

  # restful , do not need delete 

  delete '/microposts/:id', to: 'microposts#destroy'


  resources :jewels do 
    resources :microposts
  end
  
  resources :users
  resources :favorites
  resources :microposts
  
end
 