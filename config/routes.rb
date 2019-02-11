Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #CRUD
  get 'tasks', to: 'tasks#index'
  #create has two steps. One - render form, 2 create and make presistant
  get 'tasks/new', to: 'tasks#new'

  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create'
  get 'task/new', to: 'tasks#udpate'
  get 'tasks/:id/edit', to: 'tasks#edit'

  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
