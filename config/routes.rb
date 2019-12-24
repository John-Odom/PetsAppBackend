Rails.application.routes.draw do
  resources :organizations
  resources :favorites
  resources :dogs
  resources :users
      post '/login', to: 'auth#create'
      get '/login', to: 'auth#index'
      get '/profile', to: 'users#profile'
end
