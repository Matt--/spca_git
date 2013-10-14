class Orientation < ActiveRecord::Base
  attr_accessible :presenter, :datetime, :participantMax, :numCurrParticipant
  
  
  has_many :volunteers
  
  
end
