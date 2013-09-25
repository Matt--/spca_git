class Department < ActiveRecord::Base
  attr_accessible :name, :jobdescriptions, :jobdescriptions_attributes

  has_one :dept_supervisor

  has_many :jobdescriptions
    accepts_nested_attributes_for :jobdescriptions

end
