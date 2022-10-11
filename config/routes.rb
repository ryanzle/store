Rails.application.routes.draw do
  get 'access/new', to: 'access#new'
  post 'access/new', to: 'access#create'
  get 'access/create', to: 'access#create'
  get 'logout', to: 'access#destroy'
  delete 'logout', to: 'access#destroy'
  get 'admin', to: 'admin#index'
  get 'login', to: 'access#new'
  get 'admin/index'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get '/', to: "shopper#index"
  root "shopper#index", as: 'shopper'
end
