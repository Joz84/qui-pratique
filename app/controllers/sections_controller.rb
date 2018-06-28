class SectionsController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @rating = Rating.find_or_initialize_by(section: @section)
  end
end
