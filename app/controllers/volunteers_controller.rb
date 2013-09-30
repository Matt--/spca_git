class VolunteersController < ApplicationController

  helper VolunteersHelper

  # GET /volunteers
  # GET /volunteers.json
  def index
    @volunteers = Volunteer.all
    @volcoordinator = Volcoordinator.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volunteers }
    end
  end

  # GET /volunteers/1
  # GET /volunteers/1.json
  def show
    @volunteer = Volunteer.find(params[:id])
    @volcoordinator = Volcoordinator.first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volunteer }
    end
  end

  # GET /volunteers/new
  # GET /volunteers/new.json
  def new
    @volunteer = Volunteer.new
#    @onday = Onday.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volunteer }
    end
  end

  # GET /volunteers/1/edit
  def edit
    @volunteer = Volunteer.find(params[:id])
    @onday = @volunteer.ondays.build(params[:availableday])
    @jobdescription = Jobdescription.new
#     @orientation = Orientation.new
#     @orientation = @volunteer.datetime.build(params[:datetime])

  end

  # POST /volunteers
  # POST /volunteers.json
  def create
    @volunteer = Volunteer.new(params[:volunteer])

    respond_to do |format|
      if @volunteer.save
        format.html { 
              redirect_to @volunteer, 
              notice: 'Volunteer was successfully created.' }
        format.json { 
              render json: @volunteer, status: :created, location: @volunteer }
      else
        format.html { render action: "new" }
        format.json { 
                render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volunteers/1
  # PUT /volunteers/1.json
  def update
    @volunteer = Volunteer.find(params[:id])

puts "########################## AAAAARGH !!!! ###############"
puts params.inspect
    d = Array.new
    if !params[:id].nil?
      d[0] = params[:volunteer][:vol_job_day_attributes]["0"][:frequency_attributes]
      d[1] = params[:volunteer][:vol_job_day_attributes]["1"][:frequency_attributes]
      d[2] = params[:volunteer][:vol_job_day_attributes]["2"][:frequency_attributes]
      d[3] = params[:volunteer][:vol_job_day_attributes]["3"][:frequency_attributes]
      d[4] = params[:volunteer][:vol_job_day_attributes]["4"][:frequency_attributes]
      d[5] = params[:volunteer][:vol_job_day_attributes]["5"][:frequency_attributes]
      d[6] = params[:volunteer][:vol_job_day_attributes]["6"][:frequency_attributes]
 #       if p1[0].to_s.match("volunteer")
puts "########################## BBBAARGH !!!! ###############"
puts d[0][:name]
    
      i = 0
      @volunteer.frequencies.each do |freq|
puts freq.name
puts freq.week
puts d[i][:name]
puts d[i][:week]
        if !(freq.name == d[i][:name] && freq.week == d[i][:week])
          freq = Frequency.where(:name == d[i][:name], :week == d[i][:week])
        end
      i = i+1
      end
    end

=begin
match param with existing Frequency models and apply them to the volunteer

        if p[0].to_s.match("frequency_attributes")
puts p[0].inspect
          id = p[0].to_s.slice(4..-1).to_i
#         absent = Absence.new(day: Date.parse(params["date"]), volunteer_id: id)
#          absent.save
        end
      end
    end
=end

    respond_to do |format|
      if @volunteer.update_attributes(params[:volunteer])
        format.html { 
              redirect_to @volunteer, 
              notice: 'Volunteer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { 
              render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.json
  def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.destroy

    respond_to do |format|
      format.html { redirect_to volunteers_url }
      format.json { head :no_content }
    end
  end
end
