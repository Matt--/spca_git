class Person < ActiveRecord::Base
  attr_accessible :dob, :email, :homePhone, :mobile, :name, :workPhone
end
