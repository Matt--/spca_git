class DepartmentJobdescription < ActiveRecord::Base
  attr_accessible :department_id, :jobdescription_id


  belongs_to :department
  belongs_to :jobdescription

  accepts_nested_attributes_for :department
  accepts_nested_attributes_for :jobdescription

end
