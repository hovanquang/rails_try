Rails.application.routes.draw do


  root 'staticpages#home'
  get '/help', to: 'staticpages#help'
  get '/about', to: 'staticpages#about'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :microposts
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
