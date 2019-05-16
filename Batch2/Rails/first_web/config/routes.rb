Rails.application.routes.draw do
  resources :users do
    # collection do
    #   get "signin"
    # end
  end
  get "/signin", to: "users#signin"
  post "/authenticate", to: "users#authenticate"
  delete "/logout", to: "users#logout"

  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
