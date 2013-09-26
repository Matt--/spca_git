class JobdescriptionsController < ApplicationController

  def destroy
    @jobdescription = Jobdescription.find(params[:id])
    @jobdescription.destroy

    respond_to do |format|
      format.html { redirect_to departments_url, 
        :notice => @jobdescription.errors[:base].to_s }
      format.json { head :no_content }
    end
  end 

end

 #     format.html { redirect_to volunteers_url }

