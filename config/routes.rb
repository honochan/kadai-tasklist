Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  get 'user', to: 'users#index'
  post "/tasks/:id/destroy" => "tasks#destroy"
  delete 'destroy', to: 'tasks#destroy'
  resources :users, only: [:index, :new, :create]
  resources :tasks
end
