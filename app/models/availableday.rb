class Availableday < ActiveRecord::Base
  attr_accessible :day, :dayint, :schedulejobtype_id, :volunteer_id

  belongs_to :schedulejobtype
  belongs_to :volunteer

end
