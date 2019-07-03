Rails.application.routes.draw do
  devise_for :users
  get 'cherries/index'
  get 'cherries/new'
  get 'cherries/create'
  get 'cherries/edit'
  get 'cherries/update'
  get 'cherries/destroy'
  get 'farms/index'
  get 'farms/search'
  get 'farms/show'
  get 'farms/new'
  get 'farms/create'
  get 'farms/edit'
  get 'farms/update'
  get 'farms/destroy'
  get 'farms/about'
  get 'farms/admin_index'
  get 'farms/admin_show'
  get 'farms/admin_edit'
  get 'farms/admin_update'
  get 'farms/admin_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
