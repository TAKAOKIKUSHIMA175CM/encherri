Rails.application.routes.draw do

devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'farms#index'

  resources :users, only: [:show, :update, :destroy]
  resources :farms
  resources :cherries, only:[:index, :new, :create, :edit, :update, :destroy]

  get "admin/" => "users#admin_index"
  patch "admin/users/:id" => "users#admin_update", as: "update_admin_user"
  delete "admin/users/:id" => "users#admin_destroy", as: "destroy_admin_users"

  post "search" => "farms#search"
  get "about" => "farms#about"
  get "admin/farms/" => "farms#admin_index"
  get "admin/farms/:id" => "farms#admin_show", as: "show_admin_farm"
  get "admin/farms/:id/edit" => "farms#admin_edit", as: "edit_admin_farm"
  patch "admin/farms/:id" => "farms#admin_update", as: "update_admin_farm"
  delete "admin/farms/:id" => "farms#admin_destroy", as: "destroy_admin_farm"
  get "area" => "farms#area_index", as: "area"
  post "area/search" => "farm#area_search"

end




=begin
    get 'users/show'
    get 'users/update'
    get 'users/destroy'
    get 'users/admin'
    get 'users/admin_index'
    get 'users/admin_update'
    get 'users/admin_destroy'
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
=end
=begin
                   Prefix Verb   URI Pattern                                                                              Controller#Action
         new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
             user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
     destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
        new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
       edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
            user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
                          PUT    /users/password(.:format)                                                                devise/passwords#update
                          POST   /users/password(.:format)                                                                devise/passwords#create
 cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
    new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
   edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
        user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
                          PUT    /users(.:format)                                                                         devise/registrations#update
                          DELETE /users(.:format)                                                                         devise/registrations#destroy
                          POST   /users(.:format)                                                                         devise/registrations#create
                     root GET    /                                                                                        farms#index
                     user GET    /users/:id(.:format)                                                                     users#show
                          PATCH  /users/:id(.:format)                                                                     users#update
                          PUT    /users/:id(.:format)                                                                     users#update
                          DELETE /users/:id(.:format)                                                                     users#destroy
                    farms GET    /farms(.:format)                                                                         farms#index
                          POST   /farms(.:format)                                                                         farms#create
                 new_farm GET    /farms/new(.:format)                                                                     farms#new
                edit_farm GET    /farms/:id/edit(.:format)                                                                farms#edit
                     farm GET    /farms/:id(.:format)                                                                     farms#show
                          PATCH  /farms/:id(.:format)                                                                     farms#update
                          PUT    /farms/:id(.:format)                                                                     farms#update
                          DELETE /farms/:id(.:format)                                                                     farms#destroy
                 cherries GET    /cherries(.:format)                                                                      cherries#index
                          POST   /cherries(.:format)                                                                      cherries#create
               new_cherry GET    /cherries/new(.:format)                                                                  cherries#new
              edit_cherry GET    /cherries/:id/edit(.:format)                                                             cherries#edit
                   cherry PATCH  /cherries/:id(.:format)                                                                  cherries#update
                          PUT    /cherries/:id(.:format)                                                                  cherries#update
                          DELETE /cherries/:id(.:format)                                                                  cherries#destroy
                    admin GET    /admin(.:format)                                                                         users#admin_index
        update_admin_user PATCH  /admin/users/:id(.:format)                                                               users#admin_update
      destroy_admin_users DELETE /admin/users/:id(.:format)                                                               users#admin_destroy
                   search POST   /search(.:format)                                                                        farms#search
                    about GET    /about(.:format)                                                                         farms#about
              admin_farms GET    /admin/farms(.:format)                                                                   farms#admin_index
          show_admin_farm GET    /admin/farms/:id(.:format)                                                               farms#admin_show
          edit_admin_farm GET    /admin/farms/:id/edit(.:format)                                                          farms#admin_edit
        update_admin_farm PATCH  /admin/farms/:id(.:format)                                                               farms#admin_update
       destroy_admin_farm DELETE /admin/farms/:id(.:format)                                                               farms#admin_destroy
                     area GET    /area(.:format)                                                                          farms#area_index
              area_search POST   /area/search(.:format)                                                                   farm#area_search
               refile_app        /attachments                                                                             #<Refile::App app_file="/home/vagrant/.bundle/ruby/2.5.0/refile-46b4178654e6/lib/refile/app.rb">
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
=end

