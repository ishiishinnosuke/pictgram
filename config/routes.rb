Rails.application.routes.draw do
  get 'topics/new'
  root 'pages#index'
  get 'pages/help'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  resources :comments, only: [:create]
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete "/favorites", to: "favorites#delete"
  
  get 'comments/new' 
  post '/commnets', to: 'comments#create'
  delete "/comments", to: "comments#delete"
  
end
