class DeptSupervisorsController < ApplicationController
  # GET /dept_supervisors
  # GET /dept_supervisors.json
  def index
    @dept_supervisors = DeptSupervisor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dept_supervisors }
    end
  end

  # GET /dept_supervisors/1
  # GET /dept_supervisors/1.json
  def show
    @dept_supervisor = DeptSupervisor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dept_supervisor }
    end
  end

  # GET /dept_supervisors/new
  # GET /dept_supervisors/new.json
  def new
    @dept_supervisor = DeptSupervisor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dept_supervisor }
    end
  end

  # GET /dept_supervisors/1/edit
  def edit
    @dept_supervisor = DeptSupervisor.find(params[:id])
  end

  # POST /dept_supervisors
  # POST /dept_supervisors.json
  def create
    @dept_supervisor = DeptSupervisor.new(params[:dept_supervisor])

    respond_to do |format|
      if @dept_supervisor.save
        format.html { redirect_to @dept_supervisor, notice: 'Dept Supervisor was successfully created.' }
        format.json { render json: @dept_supervisor, status: :created, location: @dept_supervisor }
      else
        format.html { render action: "new" }
        format.json { render json: @dept_supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dept_supervisors/1
  # PUT /dept_supervisors/1.json
  def update
    @dept_supervisor = DeptSupervisor.find(params[:id])

    respond_to do |format|
      if @dept_supervisor.update_attributes(params[:dept_supervisor])
        format.html { redirect_to @dept_supervisor, notice: 'Dept Supervisor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dept_supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dept_supervisors/1
  # DELETE /dept_supervisors/1.json
  def destroy
    @dept_supervisor = DeptSupervisor.find(params[:id])
    @dept_supervisor.destroy

    respond_to do |format|
      format.html { redirect_to dept_supervisors_url }
      format.json { head :no_content }
    end
  end
end
