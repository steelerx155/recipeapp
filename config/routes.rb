Rails.application.routes.draw do
  resources :comments
  resources :recipes
  resources :ingredients

  root 'sessions#home'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#delete'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  resources :users do 
    resources :recipes
  end
  

  resources :comments do 
    resources :recipes
  end
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
