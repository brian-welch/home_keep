Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :buildings do
    resources :rooms
  end

  get 'my_hk', to: 'dashboard#index', as: "my_hk"

end
