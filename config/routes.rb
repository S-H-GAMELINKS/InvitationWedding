Rails.application.routes.draw do
  root 'web#index'
  get "/about", to: "web#index"
end
