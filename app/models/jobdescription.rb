class Jobdescription < ActiveRecord::Base
  attr_accessible :name, :dojob_id, :volscheduler_id

  has_many   :dojob
  has_one :volscheduler

end
