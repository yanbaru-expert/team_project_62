Rails.application.routes.draw do
  root "texts#index"
  resources :texts do
    resource :read_progresses, only: [:create, :destroy]
  end
  devise_for :users
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :texts, only: %i[index show]
  resources :movies, only: :index
end
