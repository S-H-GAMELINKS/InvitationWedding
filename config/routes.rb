Rails.application.routes.draw do
  root 'web#index'
  get "/about", to: "web#index"
  get "/contact", to: "web#index"
end
