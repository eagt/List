Rails.application.routes.draw do

 root :to => "todos#index"
  resources :list_tags
  resources :tags
  resources :tasks
  resources :categories
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
