Rails.application.routes.draw do


  resources :messages do
    post 'send_message'
  end

  root 'search#new'

  resources :parks do
    resources :activities do
      resources :events
    end
  end

  resources :participants
  resources :subscriptions, only: [:new, :create, :destroy]
  resources :users do
    resources :verifications, only: [:new, :create]
  end
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :search, only: [:new, :create, :show]

  get '/activities/:id', to: 'activities#park_list', as: 'park_list'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  post 'parks_near_by' => 'search#parks_near_by'
  post 'activity_near_by/:id' => 'activities#activity_near_by'
  post 'all_parks' => 'parks#all_parks'

end
