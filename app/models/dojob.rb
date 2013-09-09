class Dojob < ActiveRecord::Base
  attr_accessible :job, :dayint, :volscheduler_id

  belongs_to :volscheduler

  has_many :ondays
  has_many :volunteers,
           :through => :ondays



  def day
    d = ['Monday', 'Tuesday', 'Wednesday', 'Thursday',
                                  'Friday', 'Saturday', 'Sunday']
    return d[dayint]
  end
end
