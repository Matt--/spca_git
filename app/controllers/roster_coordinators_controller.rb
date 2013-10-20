class RosterCoordinatorsController < ApplicationController
  # GET /roster_coordinators
  # GET /roster_coordinators.json
  def index
    @roster_coordinators = RosterCoordinator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roster_coordinators }
    end
  end

  # GET /roster_coordinators/1
  # GET /roster_coordinators/1.json
  def show
    @roster_coordinator = RosterCoordinator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roster_coordinator }
    end
  end

  # GET /roster_coordinators/new
  # GET /roster_coordinators/new.json
  def new
    @roster_coordinator = RosterCoordinator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roster_coordinator }
    end
  end

  # GET /roster_coordinators/1/edit
  def edit
    @roster_coordinator = RosterCoordinator.find(params[:id])
  end

  # POST /roster_coordinators
  # POST /roster_coordinators.json
  def create
    @roster_coordinator = RosterCoordinator.new(params[:roster_coordinator])

    respond_to do |format|
      if @roster_coordinator.save
        format.html { redirect_to @roster_coordinator, notice: 'Dept Supervisor was successfully created.' }
        format.json { render json: @roster_coordinator, status: :created, location: @roster_coordinator }
      else
        format.html { render action: "new" }
        format.json { render json: @roster_coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roster_coordinators/1
  # PUT /roster_coordinators/1.json
  def update
    @roster_coordinator = RosterCoordinator.find(params[:id])

    respond_to do |format|
      if @roster_coordinator.update_attributes(params[:roster_coordinator])
        format.html { redirect_to @roster_coordinator, notice: 'Dept Supervisor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roster_coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roster_coordinators/1
  # DELETE /roster_coordinators/1.json
  def destroy
    @roster_coordinator = RosterCoordinator.find(params[:id])
    @roster_coordinator.destroy

    respond_to do |format|
      format.html { redirect_to roster_coordinators_url }
      format.json { head :no_content }
    end
  end
end
