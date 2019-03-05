Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :posts
  resources :follows
  resources :reactions

 get    '/login',   to: 'sessions#new'
 post   '/login',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'

 
end
