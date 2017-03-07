Rails.application.routes.draw do
  resources :messages
  root 'search#new'

  resources :parks do
    resources :activities do
      resources :events
    end
  end

  resources :participants
  # # Routes for attending and subtracting attendee's from events.
  # resources :events do
  #   post 'attend', on: :attendee # OR on attendee?
  # end
  #
  # resources :events do
  #   post 'stop_attend', on: :attendee # OR on attendee?
  # end

  # resources :park_activity, only: [:index, :show]
  resources :subscriptions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :user_sessions, only: [:new, :create, :destroy]
  # resources :parks, only: [:index, :show]
  resources :search, only: [:new, :create, :show]

  get '/activities/:id', to: 'activities#park_list', as: 'park_list'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  post 'parks_near_by' => 'search#parks_near_by'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
