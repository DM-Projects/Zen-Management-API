Rails.application.routes.draw do
  resources :issues
  resources :projects
  resources :tickets
  resources :users

  get "/user/issues/:id", to: "userprofile#getissues"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
