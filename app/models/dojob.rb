class Dojob < ActiveRecord::Base
  attr_accessible :job, :volscheduler_id

  belongs_to :volscheduler

  has_many :ondays
  has_many :volunteers,
           :through => :ondays
end
