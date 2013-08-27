class WhiteboardsController < ApplicationController
  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    @whiteboard = @volunteer.whiteboards.create(params[:whiteboard])
    redirect_to volunteer_path(@volunteer)
  end
  def index
    @whiteboards = Whiteboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volunteers }
    end
  end
end
