class Orientation < ActiveRecord::Base
  attr_accessible :presenter, :datetime, :participantMax, :numCurrParticipant
  
  has_many :volunteers
  
  validate :max_size
  
  def max_size
    if participantMax < numCurrParticipant
      errors.add(:participantMax, "already has more than " + participantMax.to_s + " people attending (" + numCurrParticipant.to_s + ")")
    end
  end
end