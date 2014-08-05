Rails.application.routes.draw do
  root "task_lists#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "/about" => "about#about", as: :about
  get "/new_task" => "task_lists#new_task"
  post "root"=>"task_lists#new_task"
end
