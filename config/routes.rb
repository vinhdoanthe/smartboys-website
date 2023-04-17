Rails.application.routes.draw do
  # mount Avo::Engine, at: Avo.configuration.root_path
  resources :matches
  devise_for :users
  authenticate :user do
    mount Avo::Engine, at: Avo.configuration.root_path
    # mount Avo::Engine => '/avo'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  # root "articles#index"
end
