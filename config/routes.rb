Rails.application.routes.draw do
  resources :visits
  resources :visitors
  resources :employees
  resources :sectors
  resources :units

  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
