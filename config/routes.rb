Rails.application.routes.draw do
  devise_for :users
  root to: 'shops#index'
  resources :shops, only: [:index, :new, :create, :show] do
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
