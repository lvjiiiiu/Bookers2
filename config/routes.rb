Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"
  resources :post_books, except: [:new]
  resources :users, except: [:new, :destroy, :create]
end
