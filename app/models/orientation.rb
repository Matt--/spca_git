class Orientation < ActiveRecord::Base
  attr_accessible :presenter, :datetime
  
  
  has_many :volunteers
  
  
end
