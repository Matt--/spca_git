class RosterCoordinator < ActiveRecord::Base
  attr_accessible :department_id, :firstname, :lastname, :title, :user_id

  belongs_to :department
  belongs_to :user

end
