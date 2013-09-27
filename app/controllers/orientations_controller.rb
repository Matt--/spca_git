class OrientationsController < ApplicationController
  # GET /orientations
  # GET /orientations.json
  def index
    @orientations = Orientation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orientations }
    end
  end

  # GET /orientations/1
  # GET /orientations/1.json
  def show
    @orientation = Orientation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orientation }
    end
  end

  # GET /orientations/new
  # GET /orientations/new.json
  def new
    @orientation = Orientation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orientation }
    end
  end

  # GET /orientations/1/edit
  def edit
    @orientation = Orientation.find(params[:id])
  end

  # POST /orientations
  # POST /orientations.json
  def create
    @orientation = Orientation.new(params[:orientation])

    respond_to do |format|
      if @orientation.save
        format.html { redirect_to @orientation, notice: 'Orientation was successfully created.' }
        format.json { render json: @orientation, status: :created, location: @orientation }
      else
        format.html { render action: "new" }
        format.json { render json: @orientation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orientations/1
  # PUT /orientations/1.json
  def update
    @orientation = Orientation.find(params[:id])
    
   puts "#################################"
    puts "here instead"
    puts params.inspect
    
    vols = Volunteer.all
    (0..vols.length-1).each do |p|
#       if(vols[p].orientation_id==@orientation.id)
# 	  vols[p].orientation_id=0
#       end
      
      
#       if (vols[p].orientation_id==0)
# 	puts "testeddddddddddddddddddddddddddddddddddddddddd"
#       end

      
      
   
    end
#     @volunteer.Orientation.datetime=nil
      
    respond_to do |format|
      if @orientation.update_attributes(params[:orientation])
        format.html { redirect_to @orientation, notice: 'Orientation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orientation.errors, status: :unprocessable_entity }
      end
    end
  end


  # Make orientation time to nil
  def deleteOrienVol
     puts "#############################################"
#     @orientation = Orientation.find(params[:id])
    @volunteer = Volunteer.find(params[:id])
    if (@volunteer.Orientation.datetime != nil)
	@volunteer.Orientation.datetime=nil
     
#       respond_to do |format|
# 	format.html # show.html.erb
# 	format.json { render json: @orientation }
#       end
    end
  end
  
  
  # DELETE /orientations/1
  # DELETE /orientations/1.json
  def destroy
    @orientation = Orientation.find(params[:id])
    @orientation.destroy

    respond_to do |format|
      format.html { redirect_to orientations_url }
      format.json { head :no_content }
    end
  end
end
