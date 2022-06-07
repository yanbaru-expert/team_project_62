Rails.application.routes.draw do
  root "texts#index"
  devise_for :users
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :texts, only: %i[index show]

  resources :movies, only: :index do
    resource :watch_progresses, only: %i[create destroy]
  end
end
