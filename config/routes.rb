Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tasks
  resources :lists
  resources :ideas
  resources :elements
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
