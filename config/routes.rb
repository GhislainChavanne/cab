Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  scope '(:locale)', locale: /en|es/ do
    root to: 'pages#home'
    
    get 'team',      to: 'pages#team'
    get 'news',      to: 'pages#news'
    get 'contact',   to: 'pages#contact'
    get 'mentions',  to: 'pages#mentions'

    post 'contact', to: 'contacts#create'
  end

  get '/signatures', to: 'pages#signatures'
  resources :articles, only: [:index, :show]
end
