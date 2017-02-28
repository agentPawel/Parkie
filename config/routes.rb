Rails.application.routes.draw do
  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'

  resources :users, only: [:new, :create, :show]
  resources :user_sessions, only: [:new, :create, :destroy]

  # root :to => 'http://localhost:3000'
  resources :user_sessions
  resources :users
  resources :events

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
