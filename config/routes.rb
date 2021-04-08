Rails.application.routes.draw do
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'team_link_pages#home'
  get  '/company',    to: 'team_link_pages#company'
  get  '/products',   to: 'team_link_pages#products'
  get  '/news', to: 'team_link_pages#news'
end
