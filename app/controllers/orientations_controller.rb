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
    @orientation.numCurrParticipant = 0
    
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
    volunteer = nil
    
    if !params[:id].nil?
      params.each do |p|
        if p[0].to_s.match("delOrien_*")
          id = p[0].to_s.slice(9..-1).to_i
          volunteer = Volunteer.find(id)
          
          volunteer.orientation.numCurrParticipant = volunteer.orientation.numCurrParticipant - 1
          volunteer.orientation.save
          

         volunteer.orientation_id = 1
         volunteer.save
          
          #volunteer.orientation.numCurrParticipant = volunteer.orientation.numCurrParticipant + 1
          #volunteer.orientation.save
        elsif p[0].to_s.match("addOrien_*")
         id = p[0].to_s.slice(9..-1).to_i
         volunteer = Volunteer.find(id)

          
          #volunteer.orientation.numCurrParticipant = volunteer.orientation.numCurrParticipant - 1
          #volunteer.orientation.save
          

	  volunteer.orientation_id = params[p[0]][:id]
	  volunteer.save
          
          volunteer.orientation.numCurrParticipant = volunteer.orientation.numCurrParticipant + 1
          volunteer.orientation.save
        end
      end
    end
    #@orientation2 = Orientation.find(volunteer.orientation_id)
    #@orientation2.numCurrParticipant = @orientation2.volunteers.length
    #@orientation.save
    #@orientation2.save


# volunteer = nil
# if !params[:id].nil?
# params.each do |p|
        
#         if p[0].to_s.match("addOrien_*")
#          id = p[0].to_s.slice(9..-1).to_i
#          volunteer = Volunteer.find(id)
#          volunteer.orientation_id = params[p[0]][:id]
#          volunteer.save
        
        
        
        
#          orient = Orientation.find(params[p[0]][:id])
#          myid = orient.id
#          puts "ORIENTATIONNNNNNNNNNNNNNNNNNNN"
        
#          puts orient.numCurrParticipant
#          orient.numCurrParticipant = orient.numCurrParticipant + 1
#          puts orient.numCurrParticipant
        
#          @orientation.save
#         end
     
# end

    
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



  
  
  # DELETE /orientations/1
  # DELETE /orientations/1.json
  def destroy
    @orientation = Orientation.find(params[:id])
    @orientation.volunteers.each do |v|
      v.orientation_id = 1
      v.save
      
      #v.orientation.numCurrParticipant = v.orientation.numCurrParticipant + 1
      #v.orientation.save
    end
    @orientation.destroy
    
    respond_to do |format|
      format.html { redirect_to orientations_url }
      format.json { head :no_content }
    end
  end
end
