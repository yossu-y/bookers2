Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :edit, :update, :index]
  resources :books
  post 'books' => 'books#create'
  root to: 'homes#top'
  get "/home/about" => "homes#about", as: "about"

end
