Rails.application.routes.draw do

  get '/mentions', to: 'mentions#index'

  devise_for :users

  resources :market_categories do
    resources :fontes
  end

  resources :tags do
    resources :fontes
  end

  resources :product_tags do
    resources :products
  end


  resources :job_types do
    resources :employees
  end
  

  resources :users do
    collection do
      get :fetch_country_states
      get :cities
    end
    resources :reviews
    resources :fontes do
      resources :employees
      resources :products
    end
  end

  resources :reviews do
    resources :fontes
  end

  resources :fontes do
    resources :employees
    resources :products
  end

  # resources :cities
  # resources :countries

  # resources :addresses do
  #   collection do
  #     get :states
  #   end
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
