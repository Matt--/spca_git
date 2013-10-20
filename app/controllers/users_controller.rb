class UsersController < ApplicationController
  def new
    ActiveRecord::Base.transaction do
      @user = User.new
      #volunteer = @user.volunteer.new
      #@volunteer = Volunteer.new
      @user.volunteer = Volunteer.new
    end
  end

  def edit
    if (current_user == nil)
      redirect_to home_block_path
    else
      @user = current_user
      render "edit"
    end
  end


  def create
    puts params.inspect
    user_saved_ok = false
    ActiveRecord::Base.transaction do
      @user = User.new(params[:user])
      @user.volunteer = Volunteer.new(params[:volunteer])
      @user.volunteer.email = @user.email
      @user.volunteer.status = "New"
      #@user.volunteer.save
      @user.role = "volunteer"
      user_saved_ok = @user.save
    end
    if user_saved_ok

      #@user2 = User.find(session[:user_id])
      session[:user_id] = @user.id
      if (@user.volunteer.role == "both" || @user.volunteer.role == "fosterer")
        #redirect_to :controller => "fosterer", :action => "new", :volunteer_id => @user.volunteer_id
        redirect_to :controller => "fosterers", :action => "new", :volunteer_id => @user.volunteer.id
      else
        redirect_to volunteers_path
      end
    else
      render "new"
    end
  end

  def update
    @user = current_user
    @user = current_user
    old = @user.volunteer.orientation
    
    if @user.update_attributes(params[:user])
      if old != @user.volunteer.orientation
        old.numCurrParticipant = old.numCurrParticipant - 1
        old.save
        @user.volunteer.orientation.numCurrParticipant = @volunteer.orientation.numCurrParticipant + 1
        @user.volunteer.orientation.save
      end
      
      params[:volunteer][:email] = @user.email
      @user.volunteer.update_attributes(params[:volunteer])
      redirect_to volunteers_path
    else
      render "edit"
    end
  end


  def password
    if (current_user == nil)
      redirect_to home_block_path
    else
      @user = current_user
      render "password"
    end
  end

  def change_password
    if (current_user == nil)
      redirect_to home_block_path
    else
      @user = current_user
      if @user.update_attributes(params[:user])
        if @user.volcoordinator != nil
          redirect_to volcoordinators_path
        elsif @user.deptSupervisor != nil
          redirect_to volschedulers_path
        else
          redirect_to volunteers_path
        end
      else
        render "password"
      end
    end
  end

  def newSupervisor
    @user = User.new
    @user.deptSupervisor = DeptSupervisor.new
  end

  def createSupervisor

  end

end
