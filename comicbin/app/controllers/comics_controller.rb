class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    render 'index'
  end

  def new

  end

end
