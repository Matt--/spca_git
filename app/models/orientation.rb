class Orientation < ActiveRecord::Base
  attr_accessible :presenter, :date
  
  
 # validate :currentDate
  
  
# def currentDate
#     if date < Date.today
#       errors.add(:Date,"must be valid")
#     end
#   end
  
  
end
