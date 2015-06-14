Rails.application.routes.draw do
  root to: "sites#index"
  
  get 'sites', to: "sites#index"

  get 'sites/about', to: "sites#about"

  get 'sites/contact', to: "sites#contact"

  get 'users/new', to: "users#new", as: "new_user"
  post 'users', to: "users#create"
  get 'users/:id', to: "users#show"

  get '/sign_in', to: "sessions#new"
  post 'sessions', to: "sessions#create"
  delete '/users/:id', to: "sessions#destroy", as: "session_destroy"

  get 'articles/new', to: "articles#new", as: "new_article"
  post 'articles', to: "articles#create"
#  post 'articles', to: "articles#edit"
#  get 'articles', to: "articles#show"
#  delete '/users/:id', to: "articles#destroy", as: "article_destroy"
  

end
#          Prefix Verb   URI Pattern              Controller#Action
#            root GET    /                        sites#index
#           sites GET    /sites(.:format)         sites#index
#     sites_about GET    /sites/about(.:format)   sites#about
#   sites_contact GET    /sites/contact(.:format) sites#contact
#        new_user GET    /users/new(.:format)     users#new
#           users POST   /users(.:format)         users#create
#                 GET    /users/:id(.:format)     users#show
#         sign_in GET    /sign_in(.:format)       sessions#new
#        sessions POST   /sessions(.:format)      sessions#create
# session_destroy DELETE /users/:id(.:format)     sessions#destroy
#     new_article GET    /articles/new(.:format)  articles#new
#        articles POST   /articles(.:format)      articles#create
#                 GET    /articles(.:format)      articles#show
# article_destroy DELETE /users/:id(.:format)     articles#destroy
