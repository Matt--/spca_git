class Orientation < ActiveRecord::Base
  attr_accessible :presenter, :datetime, :participantMax, :numCurrParticipant, :duration
  
  has_many :volunteers
  
  validate :max_size
#   validate :valid_date
 
  
  
#   def valid_date
#     if datetime   <= DateTime.now  #- 1.day
#       errors.add(:datetime, "must not be in the past")
#     end
#   end
  
  def max_size
    if participantMax < numCurrParticipant
      errors.add(:participantMax, "already has more than " + participantMax.to_s + " people attending (" + numCurrParticipant.to_s + ")")
    end
  end
end
