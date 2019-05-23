Rails.application.routes.draw do
  get 'sample_vue/index'
  get 'sample_vue/new'
  resources :articles
  resources :products
  get 'about', to: 'sample_vue#about'
  resources :users do
    # collection do
    #   get "signin"
    # end
  end
  get "/signin", to: "users#signin"
  post "/authenticate", to: "users#authenticate"
  delete "/logout", to: "users#logout"
  namespace :api do
    resources :users, except: [:new, :edit]
  end

  root to: "sample_vue#index"
  # resources :articles
  # resources :products
  #
  # resources :users
  # scope module: :api do
  #   resources :users, path_names: {new: 'make', edit: 'modify'}
  # end
  # resources :users do
  #   resources :articles, shallow: true
  # end

  # get '/articles', to: redirect('/stories')
  # get "/signin", to: "users#signin"
  # post "/authenticate", to: "users#authenticate"
  # delete "/logout", to: "users#logout"
  #
  # root to: "users#index"

  # resources :articles, except: [:new, :create] do
  #   collection do
  #     get 'hello', as: :weinvest
  #   end
  #   member do
  #     get 'bye', constraints: {id: /\d{4}/}
  #   end
  # end
  # match "/article/:title/:id", to: "users#vendor", via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
