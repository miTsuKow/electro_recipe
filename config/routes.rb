Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :accessories do
    member do
      resources :comments
      resources :materials
      resources :recipes
    end
  end
  resources :users
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
