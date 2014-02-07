Comicbin::Application.routes.draw do

  root "comics#index"

  get "/comics" => 'comics#index', as: "comics"
  get "/comics/new" => 'comics#new', as: "new_comic"
  get "/comics/create" => 'comics#create'
  get "/comics/delete/:comic_id" => 'comics#delete'
  get "/comics/:comic_id" => 'comics#show'

end
