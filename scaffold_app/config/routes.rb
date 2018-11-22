Rails.application.routes.draw do
  devise_for :subscribers
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :subscribers do
    get '/sign_in', to: 'devise/sessions#new'
  end
  root to: "articles#index"
end
