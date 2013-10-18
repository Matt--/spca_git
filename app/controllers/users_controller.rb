class UsersController < ApplicationController
  def new
    @user = User.new
    #volunteer = @user.volunteer.new
    #@volunteer = Volunteer.new
    @user.volunteer = Volunteer.new
  end
  
  def edit
    if(current_user == nil)
      redirect_to home_block_path
    else
      @user = current_user
      render "edit"
    end
  end
  
  
  def create
    puts params.inspect
    @user = User.new(params[:user])
    @user.volunteer = Volunteer.new(params[:volunteer])
    @user.volunteer.email = @user.email
    @user.volunteer.status = "New"
    #@user.volunteer.save
    @user.role = "volunteer"
    if @user.save
      #@user2 = User.find(session[:user_id])
      session[:user_id] = @user.id
      if(@user.volunteer.role == "both" || @user.volunteer.role == "fosterer")
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
      if @user.update_attributes(params[:user])
	params[:volunteer][:email] = @user.email
	@user.volunteer.update_attributes(params[:volunteer])
	redirect_to volunteers_path
      else
	render "edit"
      end
  end
  
  
  def password
    if(current_user == nil)
      redirect_to home_block_path
    else
      @user = current_user
      render "password"
    end
  end
  def change_password
    if(current_user == nil)
      redirect_to home_block_path
    else
      @user = current_user
      if @user.update_attributes(params[:user])
	redirect_to volunteers_path
      else
	render "password"
      end
    end
  end
end
