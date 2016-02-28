Rails.application.routes.draw do
  root                  'posts#index'
  resources :tags, only: [:index, :show]
  resources :posts  do
  	resources :comments
    collection do
      get :search
    end
  end
end
