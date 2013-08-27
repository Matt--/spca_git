class WhiteboardsController < ApplicationController
  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    @whiteboard = @volunteer.whiteboards.create(params[:whiteboard])
    redirect_to volunteer_path(@volunteer)
  end
end
