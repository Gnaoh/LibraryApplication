Rails.application.routes.draw do
 
#User Routes
 
 root to: 'users#index'

 get '/users', to: 'users#index', as: 'users'

 get '/users/new', to: 'users#new', as: 'new_user'

 post '/users', to: 'users#create'

 get '/users/:id', to: 'users#show', as: 'user_profile'
 
 get '/sign_in', to: 'sessions#new'

 post '/sessions', to: 'sessions#create'


# Library Routes

 get '/libraries', to: 'libraries#index'

 get '/libraries/new', to: 'libraries#new', as: "new_library"

 post '/libraries', to: 'libraries#create'

 resource :users, :libraries


#Library User Routes

  get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"

  post "/libraries/:library_id/users", to: "library_users#create", as: "library_users"



end
