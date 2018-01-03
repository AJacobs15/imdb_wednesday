Rails.application.routes.draw do
  root :to => "movies#index"
  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Picture_tag resource:
  # CREATE
  get "/picture_tags/new", :controller => "picture_tags", :action => "new"
  post "/create_picture_tag", :controller => "picture_tags", :action => "create"

  # READ
  get "/picture_tags", :controller => "picture_tags", :action => "index"
  get "/picture_tags/:id", :controller => "picture_tags", :action => "show"

  # UPDATE
  get "/picture_tags/:id/edit", :controller => "picture_tags", :action => "edit"
  post "/update_picture_tag/:id", :controller => "picture_tags", :action => "update"

  # DELETE
  get "/delete_picture_tag/:id", :controller => "picture_tags", :action => "destroy"
  #------------------------------

  # Routes for the Picture resource:
  # CREATE
  get "/pictures/new", :controller => "pictures", :action => "new"
  post "/create_picture", :controller => "pictures", :action => "create"

  # READ
  get "/pictures", :controller => "pictures", :action => "index"
  get "/pictures/:id", :controller => "pictures", :action => "show"

  # UPDATE
  get "/pictures/:id/edit", :controller => "pictures", :action => "edit"
  post "/update_picture/:id", :controller => "pictures", :action => "update"

  # DELETE
  get "/delete_picture/:id", :controller => "pictures", :action => "destroy"
  #------------------------------

  # Routes for the Casting resource:
  # CREATE
  get "/castings/new", :controller => "castings", :action => "new"
  post "/create_casting", :controller => "castings", :action => "create"

  # READ
  get "/castings", :controller => "castings", :action => "index"
  get "/castings/:id", :controller => "castings", :action => "show"

  # UPDATE
  get "/castings/:id/edit", :controller => "castings", :action => "edit"
  post "/update_casting/:id", :controller => "castings", :action => "update"

  # DELETE
  get "/delete_casting/:id", :controller => "castings", :action => "destroy"
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get "/actors/new", :controller => "actors", :action => "new"
  post "/create_actor", :controller => "actors", :action => "create"

  # READ
  get "/actors", :controller => "actors", :action => "index"
  get "/actors/:id", :controller => "actors", :action => "show"

  # UPDATE
  get "/actors/:id/edit", :controller => "actors", :action => "edit"
  post "/update_actor/:id", :controller => "actors", :action => "update"

  # DELETE
  get "/delete_actor/:id", :controller => "actors", :action => "destroy"
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get "/directors/new", :controller => "directors", :action => "new"
  post "/create_director", :controller => "directors", :action => "create"

  # READ
  get "/directors", :controller => "directors", :action => "index"
  get "/directors/:id", :controller => "directors", :action => "show"

  # UPDATE
  get "/directors/:id/edit", :controller => "directors", :action => "edit"
  post "/update_director/:id", :controller => "directors", :action => "update"

  # DELETE
  get "/delete_director/:id", :controller => "directors", :action => "destroy"
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get "/movies/new", :controller => "movies", :action => "new"
  post "/create_movie", :controller => "movies", :action => "create"

  # READ
  get "/movies", :controller => "movies", :action => "index"
  get "/movies/:id", :controller => "movies", :action => "show"

  # UPDATE
  get "/movies/:id/edit", :controller => "movies", :action => "edit"
  post "/update_movie/:id", :controller => "movies", :action => "update"

  # DELETE
  get "/delete_movie/:id", :controller => "movies", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
