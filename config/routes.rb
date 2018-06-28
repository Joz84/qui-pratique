Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :sections, only: [:show] do
    resources :ratings, only: [:create, :update]
  end
end
