GpTaskManagement::Application.routes.draw do
  resources :task_sessions

  root :to =>'welcome#index'
  resources :tasks
end
