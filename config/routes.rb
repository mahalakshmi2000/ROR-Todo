Rails.application.routes.draw do
  root 'todos#index'
  get 'todos/home'
  get 'todos/form'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'todos',:to=>'todos#create'
  get 'todos/:id', to: 'todos#destroy'
end
