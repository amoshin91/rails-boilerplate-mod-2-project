Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'sessions/new'

  resources :users
  resources :posts

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  'static_pages/home'
  get  'static_pages/help'



end
