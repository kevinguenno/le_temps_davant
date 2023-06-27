Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"

  resources :furnitures do
    resources :orders, only: %i[new create]
  end
  resources :orders, only: %i[index destroy]
end
