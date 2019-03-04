Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :follows
  resources :reactions
end
