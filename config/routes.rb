Rails.application.routes.draw do
  resources :history_points
  resources :stores
  resources :scores
  resources :users
  resources :locations
end
