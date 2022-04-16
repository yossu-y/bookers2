Rails.application.routes.draw do
  root to: 'homes#top'
  get "homes/about" => "homes#top",as: "about"

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :index, :show, :create, :destroy]

  resources :users, only: [:show, :edit, :update]

end
