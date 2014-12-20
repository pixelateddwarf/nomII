class PlacesController < ApplicationController

  def index
    @places = Place.paginate(:per_page => 2, :page => params[:page])
    #@places = Place.all # list all of the places in the Db
  end


  def new 
    @place = Place.new
  end

end
