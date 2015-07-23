Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resource :profile
  end
  namespace :admin do
    resources :products
  end
  get "/about" => "pages#about"
  root "pages#home"
  resources :contacts
  resources :products
end

