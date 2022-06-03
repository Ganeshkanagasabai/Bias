Rails.application.routes.draw do
  resources :items
  resources :tags
  
  get 'index1',action: :index1, controller: 'items'
  get 'index2',action: :index2, controller: 'items'
  get 'index3',action: :index3, controller: 'items'
  get 'index4',action: :index4, controller: 'items'
  get 'index5',action: :index5, controller: 'items'

  get 'items/new'
  get 'items/edit'
  get 'items/show'
   root 'items#index'
  
end
