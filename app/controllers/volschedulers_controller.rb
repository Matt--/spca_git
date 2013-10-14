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

    if !params[:id].nil?
      params.each do |p|
        if p[0].to_s.match("vol_*")
          id = p[0].to_s.slice(4..-1)
          workHistory = WorkHistory.where(
                   "volunteer_id = "+ id +" AND workdate = "+ params['date'])[0]
          if workHistory.nil?
            workHistory = WorkHistory.new(workdate: Date.parse(params["date"]), volunteer_id: id)
            
            workHistory.job = params['job']
            workHistory.department = params['department']
            workHistory.supervisor = params['supervisor']
          end
          workHistory.absent = true
          workHistory.save
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
  
