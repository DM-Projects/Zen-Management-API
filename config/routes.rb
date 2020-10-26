Rails.application.routes.draw do
  resources :issues
  resources :projects
  resources :tickets
  resources :users

  get "/profile/issues/:id", to: "userprofile#getissues"
  get "/profile/tickets/:id", to: "userprofile#gettickets"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
