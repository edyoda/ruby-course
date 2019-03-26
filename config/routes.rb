Rails.application.routes.draw do
  resources :users do
    collection do
      get "login"
      post "authenticate"
      delete "logout"
      get "download_csv"
    end
    member do
      get "image"
    end
  end
  resources :products, only: [:show, :new, :create]
  root to: "users#login"
  get 'login', to: "users#login"
  # scope module: 'api' do
  #   resources :users
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
