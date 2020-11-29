Rails.application.routes.draw do
  
  devise_for :users
  root 'post_books#index'
  resources :post_books, exept: [:new]
  resources :users, except: [:new, :destroy, :create]
end
