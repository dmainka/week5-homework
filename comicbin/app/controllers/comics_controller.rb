class ComicsController < ApplicationController

  # general comment; there is limited error handling in the controller below
  # we weren't asked to do this for this assignment (other than confirm deleteion)
  # so i didn't add much here.  Only real errors I got though involved creating a
  # new comic with a bad url or a url that was too large.

  def index
    @comics = Comic.all
    render 'index'
  end

  def show
    # use the params hash to get the id of the comic to show
    comic_id = params["comic_id"]
    @comic = Comic.find_by(id: comic_id)
    render 'show'
  end

  def delete
    # use the params hash to get the id of the comic to destroy
    comic_id = params["comic_id"]
    c = Comic.find_by(id: comic_id)
    c.destroy

    # go back to main view
    redirect_to comics_path
  end

  def new
    render 'new'
  end

  def create
    c = Comic.new
    # use the params hash to get the the user inputs
    c.title = params["title"]
    c.description = params["description"]
    c.image_url = params["image_url"]

    # no error checking but should probably do that before the save below.
    c.save

    # go back to main view
    redirect_to comics_path
  end

  def edit

  end

end
