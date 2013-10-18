class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      #session[:user_id] = 1
      if user.volcoordinator != nil
        redirect_to volcoordinators_path
      elsif user.deptSupervisor != nil
        redirect_to volschedulers_path
      else
        redirect_to volunteers_path
      end
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
