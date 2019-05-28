class CommentsController < ApplicationController

  before_action :find_hotel

  def create
    @comment = @hotel.comments.create(comment_params)
    redirect_to hotel_path(@hotel)
  end

  def destroy
    @comment = @hotel.comments.find(params[:id])
    @comment.destroy
    redirect_to hotel_path(@hotel)
  end

  private
    def comment_params
      params.require(:comment).permit(:rating, :content)
    end

    def find_hotel
      @hotel = Hotel.find(params[:hotel_id])
    end

end
