Rails.application.routes.draw do
  root "texts#index"
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :texts, only: %i[index show]
  resources :movies, only: :index
end
