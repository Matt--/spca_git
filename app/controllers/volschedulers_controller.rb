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

  def update
    @volscheduler = Volscheduler.first
    @volunteers = Volunteer.all
    @absence = Absence.build

    if !params[:id].nil?
      puts "#######################################"
      puts "not empty"
    end

    respond_to do |format|
      format.html {redirect_to volschedulers_path, 
                        notice: 'Volunteer absences were successfully noted.' }
      format.json { render json: @volschedulers }
    end
  end


end
  
