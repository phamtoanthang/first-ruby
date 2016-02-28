Rails.application.routes.draw do
  root                  'posts#index'
  resources :tags, only: [:index, :show]
  resources :posts  do
    collection do
      get :search
    end
  end
end
