Auth::Application.routes.draw do
  resources :categories

  resources :tips

  root to: "sessions#new"
  match "/auth/:provider/callback", to: "sessions#create"
  match "/authenticate", to: "authenticate#index"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
  match "/profile", to: "profile#index"
  resources :identities

end
