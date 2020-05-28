Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :favorites
  resources :users
  post "login", to: "authentication#login", as: "login"
end
