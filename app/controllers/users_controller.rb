class UsersController < ApplicationController
  def new
    @user = User.new
    @user.volunteer = Volunteer.new
    #@volunteer = Volunteer.new
  end
  
  
  
  
    def create
    puts params.inspect
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
