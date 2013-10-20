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
    @absence = Absence.new

puts ########## testing ###############################
@volunteers.inspect

    if !params[:id].nil?
      params.each do |p|
        if p[0].to_s.match("vol_*")
          id = p[0].to_s.slice(4..-1).to_i
          absent = Absence.new(day: Date.parse(params["date"]), volunteer_id: id)
          absent.save
        end
      end
    end

    respond_to do |format|
      format.html {redirect_to volschedulers_path, 
                        notice: 'Volunteer absences were successfully noted.' }
      format.json { render json: @volschedulers }
    end
  end
end
  
