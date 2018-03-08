Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_for :businesses, controllers: {
    sessions: 'businesses/sessions',
    registrations: 'businesses/registrations'
  }
  resources :users, only: [:index, :show]
  resource :businesses, only: [:index, :show]
  resources :events
  resources :user_events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
