Rails.application.routes.draw do
  namespace :admin do
    root to: 'dashboards#index'
    get '/login', to: 'user_sessions#new'
    post '/login', to: 'user_sessions#create'
    delete '/logout', to: 'user_sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'team_link_pages#home'
  get  '/company',    to: 'team_link_pages#company'
  get  '/products',   to: 'team_link_pages#products'
  get  '/news', to: 'team_link_pages#news'
  get  '/signup', to: 'users#new'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
