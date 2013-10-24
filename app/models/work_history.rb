class WorkHistory < ActiveRecord::Base
  attr_accessible :absent, :department, :job, :supervisor, 
                  :volunteer_id, :workdate

  belongs_to :volunteer
end
