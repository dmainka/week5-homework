Comicbin::Application.routes.draw do

  root "comics#index"

  get "/comics" => 'comics#index'
  get "/new_comic" => 'comics#new'
  get "/comics/create" => 'comics#create'
  get "/comics/delete/:comic_id" => 'comics#toast'
  get "/comics/:movie_id" => 'movies#show'

end
