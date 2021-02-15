Rails.application.routes.draw do

  resources :issues
  resources :projects
  resources :tickets
  resources :users

  get "/profile/issues/:id", to: "userprofile#getissues"
  get "/profile/tickets/:id", to: "userprofile#gettickets"
  get "/profile/dashboard/:id", to: "userprofile#getDashboardAnalytics"
  get "/user/login", to: "login#index"
  post "/user/login", to: "login#loginentity"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
