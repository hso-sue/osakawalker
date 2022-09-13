Rails.application.routes.draw do
  get 'evaluation_comments/index'
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
