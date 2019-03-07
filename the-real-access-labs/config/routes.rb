Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'sessions/new'

  resources :users
  resources :posts
  resources :login, only: [:new, :create, :update, :destroy]



end
