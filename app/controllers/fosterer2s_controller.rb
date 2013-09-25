class Fosterer2sController < ApplicationController
  # GET /fosterer2s
  # GET /fosterer2s.json
  def index
    @fosterer2s = Fosterer2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fosterer2s }
    end
  end

  # GET /fosterer2s/1
  # GET /fosterer2s/1.json
  def show
    @fosterer2 = Fosterer2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fosterer2 }
    end
  end

  # GET /fosterer2s/new
  # GET /fosterer2s/new.json
  def new
    @fosterer2 = Fosterer2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fosterer2 }
    end
  end

  # GET /fosterer2s/1/edit
  def edit
    @fosterer2 = Fosterer2.find(params[:id])
  end

  # POST /fosterer2s
  # POST /fosterer2s.json
  def create
    @fosterer2 = Fosterer2.new(params[:fosterer2])

    respond_to do |format|
      if @fosterer2.save
        format.html { redirect_to @fosterer2, notice: 'Fosterer2 was successfully created.' }
        format.json { render json: @fosterer2, status: :created, location: @fosterer2 }
      else
        format.html { render action: "new" }
        format.json { render json: @fosterer2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fosterer2s/1
  # PUT /fosterer2s/1.json
  def update
    @fosterer2 = Fosterer2.find(params[:id])

    respond_to do |format|
      if @fosterer2.update_attributes(params[:fosterer2])
        format.html { redirect_to @fosterer2, notice: 'Fosterer2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fosterer2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fosterer2s/1
  # DELETE /fosterer2s/1.json
  def destroy
    @fosterer2 = Fosterer2.find(params[:id])
    @fosterer2.destroy

    respond_to do |format|
      format.html { redirect_to fosterer2s_url }
      format.json { head :no_content }
    end
  end
end
