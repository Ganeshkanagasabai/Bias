Rails.application.routes.draw do
  resources :items
  resources :tags
  
  root 'items#index'
  get 'items/new'
  get 'items/edit'
  get 'items/show'

  
end
