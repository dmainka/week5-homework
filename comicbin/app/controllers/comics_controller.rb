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

  end

  def edit

  end

end
