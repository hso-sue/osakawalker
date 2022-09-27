Rails.application.routes.draw do
  devise_for :users
  root to: 'shops#index'
  resources :users, only: :show
  resources :shops do
    resources :evaluation_comments, only: [:create, :destroy]
    member do
      get 'search'
    end
    collection do
      get 'fashion'
      get 'food'
      get 'interior'
    end
  end
end
