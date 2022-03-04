Rails.application.routes.draw do
  root "home#index"

  get "/products/:id/buy", to: "home#buy", as: "buy"
  get "/checkout", to: "home#checkout", as: "checkout"
  resources :product
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
