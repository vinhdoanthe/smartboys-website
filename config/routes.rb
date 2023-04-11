Rails.application.routes.draw do
  mount Avo::Engine, at: Avo.configuration.root_path
  resources :matches
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  # root "articles#index"
end
