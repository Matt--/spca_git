class Jobdescription < ActiveRecord::Base
  attr_accessible :name, :id, :department_id

  has_one  :volscheduler

  belongs_to :departments
    accepts_nested_attributes_for :departments

  has_many :vol_job_day
  has_many :volunteers,
           :through => :vol_job_day

  belongs_to :volscheduler

end
