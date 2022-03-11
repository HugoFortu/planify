Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :new, :create]

  get 'home', to: 'pages#home'
  get 'calendar', to: 'pages#calendar'

  resources :tasks
  resources :lists do
    resources :elements, only: [:new, :create, :edit, :update]
  end
  resources :elements, only: [:destroy]
  resources :ideas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
