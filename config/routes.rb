Rails.application.routes.draw do
  get "users", to: "users#index"
  get "users/new", to: "users#new"
  get "users/:id", to: "users#show", as: :user
  post "users", to: "users#create"

  get "dogs", to: "dogs#indexD"
  get "dogs/new", to: "dogs#newD"
  get "dogs/:id", to: "dogs#showD", as: :dog
  post "dogs", to: "dogs#createD"
end
