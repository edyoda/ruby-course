Rails.application.routes.draw do
  resources :users do
    collection do
      get "login"
      post "authenticate"
      delete "logout"
    end
    member do
    end
  end
  resources :products, only: [:show, :new, :create]
  root to: "users#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
