Rails.application.routes.draw do
  resources :tags
  resources :products
  resources :product_tags
  resources :employees
  resources :job_types
  resources :fontes
  resources :reviews
  resources :users
  resources :cities
  resources :countries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
