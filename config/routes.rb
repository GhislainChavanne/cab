Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, only: [:new]
  root to: 'contacts#new'
  resources :articles, only: [:index, :show]
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
