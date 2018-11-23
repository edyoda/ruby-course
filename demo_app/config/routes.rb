Rails.application.routes.draw do

  resources :users do
    collection do
      get 'upload_image'
      post 'process_images'
      get 'gallery'
    end
  end
  namespace :api do
    resources :users do
      collection do
        get 'record_count'
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
