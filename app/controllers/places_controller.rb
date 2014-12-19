class PlacesController < ApplicationController

  def index
    @places = Place.all # list all of the places in the Db
  end


end
