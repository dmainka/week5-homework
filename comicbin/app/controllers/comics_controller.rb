class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    render 'index'
  end

  def show
    comic_id = params["comic_id"]
    @comic = Comic.find_by(id: comic_id)
    render 'show'
  end

  def delete
    comic_id = params["comic_id"]
    c = Comic.find_by(id: comic_id)
    c.destroy
    redirect_to comics_path
  end

  def new
    render 'new'
  end

  def create
    c = Comic.new
    c.title = params["title"]
    c.description = params["description"]
    c.image_url = params["image_url"]
    c.save
    redirect_to comics_path
  end

  def edit

  end

end
