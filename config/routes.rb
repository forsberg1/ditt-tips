Auth::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :categories
  match "/auth/:provider/callback", to: "sessions#create"
  match "/authenticate", to: "authenticate#index"
  match "ditt-tips-develop.dev", to: "home#index"
  match "/auth/failure", to: "sessions#failure"
  match "/tips/nytt",    to: "tips#new", as: "new_tips"
  match "/profil",    to: "profile#index", as: "profile"
  match "/visar-alla-tips",    to: "browse#index", as: "browse"
  match "/bli-medlem", to: "identities#new", as: "register"
  match "/logout", to: "sessions#destroy", :as => "logout"
  match "/profile", to: "profile#index"
  resources :identities
  resources :tips
  root to: "home#index"
end
