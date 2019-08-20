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

  # new routes for the comment model

  get '/comments/:id', to: 'comments#index'
  get '/edit/:id', to: 'comments#edit'
  patch '/edit/:id', to: 'comments#update'
  post '/post', to: 'comments#create'

  # restful , do not need delete 

  delete '/delete/:id', to: 'comments#destroy'



  resources :jewels do 
    resources :comments
  end
  
  resources :users
  resources :favorites
  resources :microposts
  resources :comments
  
end
 