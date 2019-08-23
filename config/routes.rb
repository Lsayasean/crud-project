Rails.application.routes.draw do
  

  root "static_pages#home"

  get 'jewels', to: 'jewels#show'

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}

  resources :jewels do 
    resources :comments
  end

  resources :favorites
  resources :comments
  
end
 