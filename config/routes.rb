Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  scope '(:locale)', locale: /en|es/ do
    root to: 'pages#home'
    get 'mentions',  to: 'pages#mentions'
  end

  get "/signatures", to: "pages#signatures"

  resources :articles, only: [:index, :show]

  match '/contacts', to: 'contacts#new', via: 'get'

  resources "contacts", only: [:new, :create]
end
