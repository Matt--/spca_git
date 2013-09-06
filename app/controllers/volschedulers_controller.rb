class VolschedulersController < ApplicationController
  # GET /volschedulers
  # GET /volschedulers.json
  def index
    @volschedulers = Volscheduler.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volschedulers }
    end
  end

  # GET /volschedulers/1
  # GET /volschedulers/1.json
  def show
    @volscheduler = Volscheduler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volscheduler }
    end
  end

  # GET /volschedulers/new
  # GET /volschedulers/new.json
  def new
    @volscheduler = Volscheduler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volscheduler }
    end
  end

  # GET /volschedulers/1/edit
  def edit
    @volscheduler = Volscheduler.find(params[:id])
  end

  # POST /volschedulers
  # POST /volschedulers.json
  def create
    @volscheduler = Volscheduler.new(params[:volscheduler])

    respond_to do |format|
      if @volscheduler.save
        format.html { redirect_to @volscheduler, notice: 'Volscheduler was successfully created.' }
        format.json { render json: @volscheduler, status: :created, location: @volscheduler }
      else
        format.html { render action: "new" }
        format.json { render json: @volscheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volschedulers/1
  # PUT /volschedulers/1.json
  def update
    @volscheduler = Volscheduler.find(params[:id])

    respond_to do |format|
      if @volscheduler.update_attributes(params[:volscheduler])
        format.html { redirect_to @volscheduler, notice: 'Volscheduler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @volscheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volschedulers/1
  # DELETE /volschedulers/1.json
  def destroy
    @volscheduler = Volscheduler.find(params[:id])
    @volscheduler.destroy

    respond_to do |format|
      format.html { redirect_to volschedulers_url }
      format.json { head :no_content }
    end
  end
end
