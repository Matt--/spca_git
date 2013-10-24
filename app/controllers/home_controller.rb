class HomeController < ApplicationController
  def index
    if current_user
      if current_user.volcoordinator != nil
	redirect_to volcoordinators_path
      elsif current_user.roster_coordinator != nil
	redirect_to volschedulers_path
      else
	redirect_to volunteers_path
      end
    end
  end
  def block
  end
end
