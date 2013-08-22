class Notepad < ActiveRecord::Base
  belongs_to :volunteers
  attr_accessible :content, :title
end
