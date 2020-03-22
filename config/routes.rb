Rails.application.routes.draw do
  get 'toppages/index'
  root to: 'tasks#index'
  
  get 'sessions/new'
  get 'sessions/ctreate'
  get 'sessions/destroy'
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
end
