Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :edit, :update, :index]
  resources :books
  root to: 'homes#top'
  get "/home/about" => "homes#about", as: "about"

end
