class Whiteboard < ActiveRecord::Base
  belongs_to :volunteer
  attr_accessible :body, :title
end
