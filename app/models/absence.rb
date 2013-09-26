class Absence < ActiveRecord::Base
  attr_accessible :day, :volunteer_id

  belongs_to :volunteer
end
