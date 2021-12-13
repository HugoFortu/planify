Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update, :new, :create]
  root to: 'pages#home'

  resources :tasks
  resources :lists do
    resources :elements, only: [:new, :create, :edit, :update]
  end
  resources :elements, only: [:destroy]
  resources :ideas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
