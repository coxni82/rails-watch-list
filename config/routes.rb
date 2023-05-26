Rails.application.routes.draw do

  root to: "lists#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmark, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
