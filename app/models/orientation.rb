class Orientation < ActiveRecord::Base
  attr_accessible :presenter, :datetime
  
  
  has_many :volunteers
  
 # validate :currentDate
  
  
# def currentDate
#     if date < Date.today
#       errors.add(:Date,"must be valid")
#     end
#   end
  
  
end
