Rails.application.routes.draw do
  get 'user_events/create'
  get 'user_events/destroy'
  get 'events/index'
  get 'events/new'
  get 'events/create'
  get 'events/show'
  get 'events/edit'
  get 'events/update'
  get 'events/destroy'
  get 'business/show'
  get 'business/index'
  get 'users/show'
  get 'users/index'
  devise_for :businesses
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user#index'
end
