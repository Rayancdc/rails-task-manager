Rails.application.routes.draw do

  get "/tasks", to: "tasks#index", as: "tasks"

  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"

  get "/tasks/:id", to: "tasks#show", as: "task"

  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy", as: "destroy"

  post "tasks/:id/check", to: "tasks#mark_as_done", as: "check"
end
