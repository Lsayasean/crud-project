Rails.application.routes.draw do
  

  root "static_pages#home"
  # get  '/signup',  to: 'users#new'
  # post '/signup',  to: 'users#create'

  # get  '/add-gem',  to: 'jewels#new'
  # post '/add-gem',  to: 'jewels#create'
  # get   '/search',    to: 'jewels#search'


  # post '/favorite',  to: 'favorites#create'
  # get '/my-favorites',  to: 'favorites#show'

  # new routes for the comment model

  # get '/comments/:id', to: 'comments#index'
  # get '/edit/:id', to: 'comments#edit'
  # patch '/edit/:id', to: 'comments#update'
  # post '/post', to: 'comments#create'

  # restful , do not need delete 

  # delete '/delete/:id', to: 'comments#destroy'


  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}

  resources :jewels do 
    resources :comments
  end

  resources :favorites
  resources :microposts
  resources :comments
  
end
 