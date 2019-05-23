# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#               rails_admin        /admin                                                                                   RailsAdmin::Engine
#                home_index GET    /home/index(.:format)                                                                    home#index
#                      root GET    /                                                                                        home#index
#                  ev_cases GET    /ev_cases(.:format)                                                                      ev_cases#index
#                           POST   /ev_cases(.:format)                                                                      ev_cases#create
#               new_ev_case GET    /ev_cases/new(.:format)                                                                  ev_cases#new
#              edit_ev_case GET    /ev_cases/:id/edit(.:format)                                                             ev_cases#edit
#                   ev_case GET    /ev_cases/:id(.:format)                                                                  ev_cases#show
#                           PATCH  /ev_cases/:id(.:format)                                                                  ev_cases#update
#                           PUT    /ev_cases/:id(.:format)                                                                  ev_cases#update
#                           DELETE /ev_cases/:id(.:format)                                                                  ev_cases#destroy
#                    audits GET    /audits(.:format)                                                                        audits#index
#                           POST   /audits(.:format)                                                                        audits#create
#                 new_audit GET    /audits/new(.:format)                                                                    audits#new
#                edit_audit GET    /audits/:id/edit(.:format)                                                               audits#edit
#                     audit GET    /audits/:id(.:format)                                                                    audits#show
#                           PATCH  /audits/:id(.:format)                                                                    audits#update
#                           PUT    /audits/:id(.:format)                                                                    audits#update
#                           DELETE /audits/:id(.:format)                                                                    audits#destroy
#                  mistakes GET    /mistakes(.:format)                                                                      mistakes#index
#                           POST   /mistakes(.:format)                                                                      mistakes#create
#               new_mistake GET    /mistakes/new(.:format)                                                                  mistakes#new
#              edit_mistake GET    /mistakes/:id/edit(.:format)                                                             mistakes#edit
#                   mistake GET    /mistakes/:id(.:format)                                                                  mistakes#show
#                           PATCH  /mistakes/:id(.:format)                                                                  mistakes#update
#                           PUT    /mistakes/:id(.:format)                                                                  mistakes#update
#                           DELETE /mistakes/:id(.:format)                                                                  mistakes#destroy
#             verifications GET    /verifications(.:format)                                                                 verifications#index
#                           POST   /verifications(.:format)                                                                 verifications#create
#          new_verification GET    /verifications/new(.:format)                                                             verifications#new
#         edit_verification GET    /verifications/:id/edit(.:format)                                                        verifications#edit
#              verification GET    /verifications/:id(.:format)                                                             verifications#show
#                           PATCH  /verifications/:id(.:format)                                                             verifications#update
#                           PUT    /verifications/:id(.:format)                                                             verifications#update
#                           DELETE /verifications/:id(.:format)                                                             verifications#destroy
#                 employees GET    /employees(.:format)                                                                     employees#index
#                           POST   /employees(.:format)                                                                     employees#create
#              new_employee GET    /employees/new(.:format)                                                                 employees#new
#             edit_employee GET    /employees/:id/edit(.:format)                                                            employees#edit
#                  employee GET    /employees/:id(.:format)                                                                 employees#show
#                           PATCH  /employees/:id(.:format)                                                                 employees#update
#                           PUT    /employees/:id(.:format)                                                                 employees#update
#                           DELETE /employees/:id(.:format)                                                                 employees#destroy
#            document_types GET    /document_types(.:format)                                                                document_types#index
#                           POST   /document_types(.:format)                                                                document_types#create
#         new_document_type GET    /document_types/new(.:format)                                                            document_types#new
#        edit_document_type GET    /document_types/:id/edit(.:format)                                                       document_types#edit
#             document_type GET    /document_types/:id(.:format)                                                            document_types#show
#                           PATCH  /document_types/:id(.:format)                                                            document_types#update
#                           PUT    /document_types/:id(.:format)                                                            document_types#update
#                           DELETE /document_types/:id(.:format)                                                            document_types#destroy
#                   clients GET    /clients(.:format)                                                                       clients#index
#                           POST   /clients(.:format)                                                                       clients#create
#                new_client GET    /clients/new(.:format)                                                                   clients#new
#               edit_client GET    /clients/:id/edit(.:format)                                                              clients#edit
#                    client GET    /clients/:id(.:format)                                                                   clients#show
#                           PATCH  /clients/:id(.:format)                                                                   clients#update
#                           PUT    /clients/:id(.:format)                                                                   clients#update
#                           DELETE /clients/:id(.:format)                                                                   clients#destroy
#                     lists GET    /lists(.:format)                                                                         lists#index
#                           POST   /lists(.:format)                                                                         lists#create
#                  new_list GET    /lists/new(.:format)                                                                     lists#new
#                 edit_list GET    /lists/:id/edit(.:format)                                                                lists#edit
#                      list GET    /lists/:id(.:format)                                                                     lists#show
#                           PATCH  /lists/:id(.:format)                                                                     lists#update
#                           PUT    /lists/:id(.:format)                                                                     lists#update
#                           DELETE /lists/:id(.:format)                                                                     lists#destroy
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                 revisions GET    /revisions(.:format)                                                                     revisions#index
#                           POST   /revisions(.:format)                                                                     revisions#create
#              new_revision GET    /revisions/new(.:format)                                                                 revisions#new
#             edit_revision GET    /revisions/:id/edit(.:format)                                                            revisions#edit
#                  revision GET    /revisions/:id(.:format)                                                                 revisions#show
#                           PATCH  /revisions/:id(.:format)                                                                 revisions#update
#                           PUT    /revisions/:id(.:format)                                                                 revisions#update
#                           DELETE /revisions/:id(.:format)                                                                 revisions#destroy
#                  settings GET    /settings(.:format)                                                                      settings#index
#                           POST   /settings(.:format)                                                                      settings#create
#               new_setting GET    /settings/new(.:format)                                                                  settings#new
#              edit_setting GET    /settings/:id/edit(.:format)                                                             settings#edit
#                   setting GET    /settings/:id(.:format)                                                                  settings#show
#                           PATCH  /settings/:id(.:format)                                                                  settings#update
#                           PUT    /settings/:id(.:format)                                                                  settings#update
#                           DELETE /settings/:id(.:format)                                                                  settings#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
# 
# Routes for RailsAdmin::Engine:
#     dashboard GET             /                                      rails_admin/main#dashboard
#         index GET|POST        /:model_name(.:format)                 rails_admin/main#index
#           new GET|POST        /:model_name/new(.:format)             rails_admin/main#new
#        export GET|POST        /:model_name/export(.:format)          rails_admin/main#export
#   bulk_delete POST|DELETE     /:model_name/bulk_delete(.:format)     rails_admin/main#bulk_delete
#        import GET|POST        /:model_name/import(.:format)          rails_admin/main#import
#        charts GET|POST|DELETE /:model_name/charts(.:format)          rails_admin/main#charts
# history_index GET             /:model_name/history(.:format)         rails_admin/main#history_index
#   bulk_action POST            /:model_name/bulk_action(.:format)     rails_admin/main#bulk_action
#          show GET             /:model_name/:id(.:format)             rails_admin/main#show
#         clone GET             /:model_name/:id/clone(.:format)       rails_admin/main#clone
#          edit GET|PUT         /:model_name/:id/edit(.:format)        rails_admin/main#edit
#        delete GET|DELETE      /:model_name/:id/delete(.:format)      rails_admin/main#delete
#   show_in_app GET             /:model_name/:id/show_in_app(.:format) rails_admin/main#show_in_app
#        toggle POST            /:model_name/:id/toggle(.:format)      rails_admin/main#toggle
#        select POST            /:model_name/:id/select(.:format)      rails_admin/main#select
#  history_show GET             /:model_name/:id/history(.:format)     rails_admin/main#history_show

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'home#index'
  resources :ev_cases
  resources :audits
  resources :mistakes
  resources :verifications
  resources :employees
  resources :document_types
  resources :clients
  resources :lists
  resources :users
  resources :revisions
  resources :settings
end
