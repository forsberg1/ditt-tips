Auth::Application.routes.draw do
  resources :tips

  root to: "sessions#new"
  match "/auth/:provider/callback", to: "sessions#create"
  match "/authenticate", to: "authenticate#index"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
  resources :identities
end
