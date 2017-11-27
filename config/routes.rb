Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :dashboard do
    resources :users
  end
end
