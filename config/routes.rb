Rails.application.routes.draw do
    resources :items 
      resources :tags
  
    
  # get 'items/index'
  # get 'items/new'
  # get'items/create'
  # get'items/edit'
  # get'items/update'
  # delete'items/destroy'

end
