Rails.application.routes.draw do
  get 'building/index'
  get 'building/show'
  get 'room/index'
  get 'room/show'
  devise_for :users
  root to: 'pages#home'

end
