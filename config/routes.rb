Rails.application.routes.draw do
  resources :comments

  resources :users, except: [:new]
  get 'signup', to: 'users#new'
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles
end
