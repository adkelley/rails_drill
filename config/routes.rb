Rails.application.routes.draw do
  root to: "sites#index"
  
  get 'sites', to: "sites#index"

  get 'sites/about', to: "sites#about"

  get 'sites/contact', to: "sites#contact"

  get 'users/new', to: "users#new", as: "new_user"
  post 'users', to: "users#create"
  get 'users/:id', to: "users#show"

  get '/sign_in', to: "sessions#new"
  get 'sessions/create', to: "sessions#create"

end
#          Prefix Verb URI Pattern                Controller#Action
#            root GET  /                          sites#index
#           sites GET  /sites(.:format)           sites#index
#     sites_about GET  /sites/about(.:format)     sites#about
#   sites_contact GET  /sites/contact(.:format)   sites#contact
#        new_user GET  /users/new(.:format)       users#new
#                 GET  /users/:id(.:format)       users#show
#         sign_in GET  /sign_in(.:format)         sessions#new
# sessions_create GET  /sessions/create(.:format) sessions#create
