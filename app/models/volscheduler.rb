class Volscheduler < ActiveRecord::Base
  attr_accessible :department_id

  has_many :dojobs
  belongs_to  :department

end
