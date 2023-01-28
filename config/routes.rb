Rails.application.routes.draw do
  get "lists", to: "lists#index"
  get "lists/:id", to: "lists#show", as: :list
  get "lists/new", to: "lists#new",  as: :new_list
  post "lists", to: "lists#create", as: :create_list

  get "lists/:id/bookmarks/new", to: "bookmarks#new", as: :new_bookmark
  post "lists/:id/bookmarks", to: "bookmarks#create"
  delete "bookmarks/:id", to: "bookmarks#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
