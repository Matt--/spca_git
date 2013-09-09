class Dojob < ActiveRecord::Base
  attr_accessible :dayint, :volscheduler_id, :jobdescription_id, :name,
                :day
  belongs_to :volscheduler

  has_many :ondays
  has_many :volunteers,
           :through => :ondays
  belongs_to :jobdescription

  accepts_nested_attributes_for :jobdescription

  def day
    d = ['Monday', 'Tuesday', 'Wednesday', 'Thursday',
                                  'Friday', 'Saturday', 'Sunday']
    return d[dayint]
  end

  def name
    return jobdescription.name
  end

  def name=(n)
    puts "###################################################"
    puts "############### here"
    jobdescription.name = n
  end

  def day
    return ['Monday', 'Tuesday', 'Wednesday', 'Thursday',
                                    'Friday', 'Saturday', 'Sunday'][dayint-1]
  end
  
  def day=(n)
    i = 1
    ['Monday', 'Tuesday', 'Wednesday', 'Thursday',
                                    'Friday', 'Saturday', 'Sunday'].each do |d|
      if d == n
        dayint = i
      end
      i = i+1
    end
  end

end
