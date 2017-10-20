Rails.application.routes.draw do
  resources :bugs do
  	get :get_status, on: :collection
  end

  resources :projects
  resources :users_managment
  devise_for :users
  
  root to: "home#index"
end