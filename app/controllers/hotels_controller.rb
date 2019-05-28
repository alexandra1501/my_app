class HotelsController < ApplicationController

  before_action :find_hotel, only: [:edit, :show, :update, :destroy]

  def index
    @hotels = Hotel.all
  end

  def create
    @hotel = Hotel.new(hotel_params)

    if @hotel.save
      redirect_to @hotel
    else
      render 'new'
    end
  end

  def new
    @hotel = Hotel.new
#    @street = @hotel.street.build
  end

  def edit
  end

  def show
  end

  def update
    if @hotel.update(hotel_params)
      redirect_to @hotel
    else
      redirect_to 'edit'
    end
  end

  def destroy
    @hotel.destroy
  end

  private
    def find_hotel
      @hotel = Hotel.find(params[:id])
    end

    def hotel_params
      params.require(:hotel).permit(:title, :breakfast, :room, :image, :image_cache, :price, street_params: [:name])
    end

end
