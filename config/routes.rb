Rails.application.routes.draw do
  root 'pages#home'

  resources :comments
  resources :users, except: [:new]
  resources :articles

  get 'signup', to: 'users#new'
  get 'about', to: 'pages#about'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
