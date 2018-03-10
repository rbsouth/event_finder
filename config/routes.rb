Rails.application.routes.draw do
  post '/user-event-interaction', to: 'user_events#save_change'
  post '/user-going', to: 'user_events#going_true'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_for :businesses, controllers: {
    sessions: 'businesses/sessions',
    registrations: 'businesses/registrations'
  }
  resources :users, only: [:index, :show]
  resources :businesses, only: [:index, :show]
  resources :events
  resources :user_events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'
end