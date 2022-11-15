Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #list all
  get "tasks", to: "tasks#index"

  #create a new
  get "tasks/new", to: "tasks#new", as: :new_task
  # post a new task
  post "tasks", to: "tasks#create"

  # read one
  get "tasks/:id", to: "tasks#show", as: :task

  # update -> get
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # update -> patch
  patch "tasks/:id", to: "tasks#update"

  # delete
  delete "tasks/:id", to: "tasks#destroy"
end
