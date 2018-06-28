class RatingsController < ApplicationController

  def create
    @section = Section.find(params[:section_id])
    @rating = current_user.ratings.new(rating_params)
    @rating.section = @section
    if @rating.save
      redirect_to @section
    else
      render "sections/show"
    end
  end

  def update

  end

  def rating_params
    params.require(:rating).permit(:value)
  end
end

