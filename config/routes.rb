GpTaskManagement::Application.routes.draw do
  root :to =>'welcome#index'
  resources :tasks
end
