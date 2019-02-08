Rails.application.routes.draw do
  resources :attendances
  root 'web#index'
  get "/form", to: "web#index"
end
