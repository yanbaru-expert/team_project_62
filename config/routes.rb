Rails.application.routes.draw do
  root "texts#index"
  resources :texts, only: %i[index show]
  resources :movies, only: :index
end
