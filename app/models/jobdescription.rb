class Jobdescription < ActiveRecord::Base
  attr_accessible :name, :id, :department_id

  has_one  :volscheduler

  belongs_to :departments
    accepts_nested_attributes_for :departments

  has_many :vol_job_day
  has_many :volunteers,
           :through => :vol_job_day

  belongs_to :volscheduler

  before_destroy :no_dependencies?


  def no_dependencies?
    if !(self.volunteers.empty?)
      errors.add( :base, 
                    "The job description, #{name}, is in use by a Volunteer.")
    end
    self.volunteers.empty?
  end

end
