class Orientation < ActiveRecord::Base
  attr_accessible :presenter, :datetime, :participantMax, :numCurrParticipant, :duration
  
  
  has_many :volunteers
  
#   validate :valid_date
 
  
  
#   def valid_date
#     if datetime   <= DateTime.now  #- 1.day
#       errors.add(:datetime, "must not be in the past")
#     end
#   end
  
end
