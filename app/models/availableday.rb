class Availableday < ActiveRecord::Base
  attr_accessible :day, :dayint, :volunteer_id, :schedulejobtype_id

  belongs_to :volunteer
  belongs_to :schedulejobtype

end
