Rails.application.routes.draw do
  root to: 'static_pages#home'
  get     'signup',   to: 'users#new'
  get     'login',    to: 'sessions#new'
  post    'login',    to: 'sessions#create'
  delete  'logout',   to: 'sessions#destroy'
  get     'retweet',  to: 'microposts#retweet'
  get     'favorite', to: 'microposts#favorite'

  resources :users
  resources :microposts
  resources :relationships, only: [:create, :destroy]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
