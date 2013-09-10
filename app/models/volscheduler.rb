class Volscheduler < ActiveRecord::Base
  attr_accessible :jobdescription_id

  has_many :dojobs
  belongs_to  :jobdescription

end
