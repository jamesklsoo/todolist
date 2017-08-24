Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  get 'pages/info'

  resources :ideas, only: [:show, :index]

  root to: redirect('/ideas')
end
