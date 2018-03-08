                      Prefix Verb   URI Pattern                                                                       Controller#Action
          user_events_create GET    /user_events/create(.:format)                                                     user_events#create
         user_events_destroy GET    /user_events/destroy(.:format)                                                    user_events#destroy
                events_index GET    /events/index(.:format)                                                           events#index
                  events_new GET    /events/new(.:format)                                                             events#new
               events_create GET    /events/create(.:format)                                                          events#create
                 events_show GET    /events/show(.:format)                                                            events#show
                 events_edit GET    /events/edit(.:format)                                                            events#edit
               events_update GET    /events/update(.:format)                                                          events#update
              events_destroy GET    /events/destroy(.:format)                                                         events#destroy
               business_show GET    /business/show(.:format)                                                          business#show
              business_index GET    /business/index(.:format)                                                         business#index
                  users_show GET    /users/show(.:format)                                                             users#show
                 users_index GET    /users/index(.:format)                                                            users#index
                       users GET    /users(.:format)                                                                  users#index
                        user GET    /users/:id(.:format)                                                              users#show
                  businesses GET    /businesses(.:format)                                                             businesses#show
                      events GET    /events(.:format)                                                                 events#index
                             POST   /events(.:format)                                                                 events#create
                   new_event GET    /events/new(.:format)                                                             events#new
                  edit_event GET    /events/:id/edit(.:format)                                                        events#edit
                       event GET    /events/:id(.:format)                                                             events#show
                             PATCH  /events/:id(.:format)                                                             events#update
                             PUT    /events/:id(.:format)                                                             events#update
                             DELETE /events/:id(.:format)                                                             events#destroy
                 user_events GET    /user_events(.:format)                                                            user_events#index
                             POST   /user_events(.:format)                                                            user_events#create
              new_user_event GET    /user_events/new(.:format)                                                        user_events#new
             edit_user_event GET    /user_events/:id/edit(.:format)                                                   user_events#edit
                  user_event GET    /user_events/:id(.:format)                                                        user_events#show
                             PATCH  /user_events/:id(.:format)                                                        user_events#update
                             PUT    /user_events/:id(.:format)                                                        user_events#update
                             DELETE /user_events/:id(.:format)                                                        user_events#destroy
        new_business_session GET    /businesses/sign_in(.:format)                                                     devise/sessions#new
            business_session POST   /businesses/sign_in(.:format)                                                     devise/sessions#create
    destroy_business_session DELETE /businesses/sign_out(.:format)                                                    devise/sessions#destroy
       new_business_password GET    /businesses/password/new(.:format)                                                devise/passwords#new
      edit_business_password GET    /businesses/password/edit(.:format)                                               devise/passwords#edit
           business_password PATCH  /businesses/password(.:format)                                                    devise/passwords#update
                             PUT    /businesses/password(.:format)                                                    devise/passwords#update
                             POST   /businesses/password(.:format)                                                    devise/passwords#create
cancel_business_registration GET    /businesses/cancel(.:format)                                                      devise/registrations#cancel
   new_business_registration GET    /businesses/sign_up(.:format)                                                     devise/registrations#new
  edit_business_registration GET    /businesses/edit(.:format)                                                        devise/registrations#edit
       business_registration PATCH  /businesses(.:format)                                                             devise/registrations#update
                             PUT    /businesses(.:format)                                                             devise/registrations#update
                             DELETE /businesses(.:format)                                                             devise/registrations#destroy
                             POST   /businesses(.:format)                                                             devise/registrations#create
            new_user_session GET    /users/sign_in(.:format)                                                          devise/sessions#new
                user_session POST   /users/sign_in(.:format)                                                          devise/sessions#create
        destroy_user_session DELETE /users/sign_out(.:format)                                                         devise/sessions#destroy
           new_user_password GET    /users/password/new(.:format)                                                     devise/passwords#new
          edit_user_password GET    /users/password/edit(.:format)                                                    devise/passwords#edit
               user_password PATCH  /users/password(.:format)                                                         devise/passwords#update
                             PUT    /users/password(.:format)                                                         devise/passwords#update
                             POST   /users/password(.:format)                                                         devise/passwords#create
    cancel_user_registration GET    /users/cancel(.:format)                                                           devise/registrations#cancel
       new_user_registration GET    /users/sign_up(.:format)                                                          devise/registrations#new
      edit_user_registration GET    /users/edit(.:format)                                                             devise/registrations#edit
           user_registration PATCH  /users(.:format)                                                                  devise/registrations#update
                             PUT    /users(.:format)                                                                  devise/registrations#update
                             DELETE /users(.:format)                                                                  devise/registrations#destroy
                             POST   /users(.:format)                                                                  devise/registrations#create
                        root GET    /                                                                                 users#index
          rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                        active_storage/blobs#show
        rails_blob_variation GET    /rails/active_storage/variants/:signed_blob_id/:variation_key/*filename(.:format) active_storage/variants#show
          rails_blob_preview GET    /rails/active_storage/previews/:signed_blob_id/:variation_key/*filename(.:format) active_storage/previews#show
          rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                       active_storage/disk#show
   update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                               active_storage/disk#update
        rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                    active_storage/direct_uploads#create
