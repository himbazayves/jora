Rails.application.routes.draw do

root  'users#index'
get 'users/signup'

  

  resources :users

  resources :sessions, only:[:create]
  
  get 'movie/list'

  get 'movie/new'
  get 'movie/edit'
  patch 'movie/update'
  get 'movie/update'
  get 'movie/delete'
  get 'movie/show_categories'

  get 'movie/show'
post 'movie/create'
end

