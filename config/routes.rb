Rails.application.routes.draw do
  resources :attendances
  root 'web#index'
  get "/about", to: "web#index"
  get "/contact", to: "web#index"
  get "/form", to: "web#index"
end
