class Volunteer < ActiveRecord::Base
  attr_accessible :address, :background, :dob, :email, :firstname, :home, :lastname, :moblie, :title
  has_many :notepads
end
