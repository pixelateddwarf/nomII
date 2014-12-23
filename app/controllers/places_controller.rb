class PlacesController < ApplicationController

 before_action :authenticate_user!, :only => [:new, :create]

  def index
    @places = Place.paginate(:per_page => 2, :page => params[:page])
    #@places = Place.all # list all of the places in the Db
  end


  def new 
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def show
    @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])
  end


# ~~~~~~~~~~~~~~~~ Private ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #
  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
