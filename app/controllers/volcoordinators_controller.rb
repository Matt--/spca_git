class VolcoordinatorsController < ApplicationController
  # GET /volcoordinators
  # GET /volcoordinators.json
  def index
    @volcoordinators = Volcoordinator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volcoordinators }
    end
  end

  # GET /volcoordinators/1
  # GET /volcoordinators/1.json
  def show
    @volcoordinator = Volcoordinator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volcoordinator }
    end
  end

  # GET /volcoordinators/new
  # GET /volcoordinators/new.json
  def new
    @volcoordinator = Volcoordinator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volcoordinator }
    end
  end

  # GET /volcoordinators/1/edit
  def edit
    @volcoordinator = Volcoordinator.find(params[:id])
  end

  # POST /volcoordinators
  # POST /volcoordinators.json
  def create
    @volcoordinator = Volcoordinator.new(params[:volcoordinator])

    respond_to do |format|
      if @volcoordinator.save
        format.html { redirect_to @volcoordinator, notice: 'Volcoordinator was successfully created.' }
        format.json { render json: @volcoordinator, status: :created, location: @volcoordinator }
      else
        format.html { render action: "new" }
        format.json { render json: @volcoordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volcoordinators/1
  # PUT /volcoordinators/1.json
  def update
    @volcoordinator = Volcoordinator.find(params[:id])

    respond_to do |format|
      if @volcoordinator.update_attributes(params[:volcoordinator])
        format.html { redirect_to @volcoordinator, notice: 'Volcoordinator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @volcoordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volcoordinators/1
  # DELETE /volcoordinators/1.json
  def destroy
    @volcoordinator = Volcoordinator.find(params[:id])
    @volcoordinator.destroy

    respond_to do |format|
      format.html { redirect_to volcoordinators_url }
      format.json { head :no_content }
    end
  end
end
