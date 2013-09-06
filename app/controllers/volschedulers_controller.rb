class VolschedulersController < ApplicationController
  # GET /volschedulers
  # GET /volschedulers.json
  def index
    @volscheduler = Volscheduler.first
    @volunteers = Volunteer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volschedulers }
    end
  end
end
  
