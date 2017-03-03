Rails.application.routes.draw do
  root 'search#new'

  resources :park_activity, only: [:index, :show]
  resources :subscriptions, only: [:new, :create, :destroy]

  # get 'user_sessions/new'
  #
  # get 'user_sessions/create'
  #
  # get 'user_sessions/destroy'

  resources :users, only: [:new, :create, :show]
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :parks, only: [:index, :show]

  # root :to => 'http://localhost:3000'
  # resources :user_sessions
  resources :search, only: [:new, :create, :show]
  resources :users
  resources :events
  resources :activities

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
